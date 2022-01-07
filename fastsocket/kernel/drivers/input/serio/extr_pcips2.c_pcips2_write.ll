; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_pcips2.c_pcips2_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_pcips2.c_pcips2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.pcips2_data* }
%struct.pcips2_data = type { i64 }

@PS2_STATUS = common dso_local global i64 0, align 8
@PS2_STAT_TXEMPTY = common dso_local global i32 0, align 4
@PS2_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @pcips2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcips2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.pcips2_data*, align 8
  %6 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.serio*, %struct.serio** %3, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = load %struct.pcips2_data*, %struct.pcips2_data** %8, align 8
  store %struct.pcips2_data* %9, %struct.pcips2_data** %5, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  %12 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PS2_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = call i32 (...) @cpu_relax()
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PS2_STAT_TXEMPTY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %10, label %24

24:                                               ; preds = %18
  %25 = load i8, i8* %4, align 1
  %26 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  %27 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PS2_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i8 zeroext %25, i64 %30)
  ret i32 0
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
