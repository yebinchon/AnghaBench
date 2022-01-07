; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_xilinx_ps2.c_sxps2_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_xilinx_ps2.c_sxps2_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.xps2data* }
%struct.xps2data = type { i32, i64 }

@XPS2_STATUS_OFFSET = common dso_local global i64 0, align 8
@XPS2_STATUS_TX_FULL = common dso_local global i32 0, align 4
@XPS2_TX_DATA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @sxps2_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sxps2_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.xps2data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load %struct.serio*, %struct.serio** %3, align 8
  %10 = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 0
  %11 = load %struct.xps2data*, %struct.xps2data** %10, align 8
  store %struct.xps2data* %11, %struct.xps2data** %5, align 8
  store i32 -1, i32* %8, align 4
  %12 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %13 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %17 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XPS2_STATUS_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @in_be32(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XPS2_STATUS_TX_FULL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %28 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XPS2_TX_DATA_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i8, i8* %4, align 1
  %33 = call i32 @out_be32(i64 %31, i8 zeroext %32)
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %26, %2
  %35 = load %struct.xps2data*, %struct.xps2data** %5, align 8
  %36 = getelementptr inbounds %struct.xps2data, %struct.xps2data* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @out_be32(i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
