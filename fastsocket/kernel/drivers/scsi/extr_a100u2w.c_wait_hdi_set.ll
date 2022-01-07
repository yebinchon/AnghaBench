; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_wait_hdi_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_a100u2w.c_wait_hdi_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_host = type { i64 }

@ORC_HSTUS = common dso_local global i64 0, align 8
@HDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orc_host*, i32*)* @wait_hdi_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_hdi_set(%struct.orc_host* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orc_host*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.orc_host* %0, %struct.orc_host** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %24, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load %struct.orc_host*, %struct.orc_host** %4, align 8
  %12 = getelementptr inbounds %struct.orc_host, %struct.orc_host* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ORC_HSTUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @HDI, align 4
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %28

22:                                               ; preds = %10
  %23 = call i32 @mdelay(i32 100)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
