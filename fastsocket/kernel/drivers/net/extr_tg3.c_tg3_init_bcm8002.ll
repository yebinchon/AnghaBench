; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_bcm8002.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_init_bcm8002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@MAC_STATUS = common dso_local global i32 0, align 4
@INIT_COMPLETE = common dso_local global i32 0, align 4
@MAC_STATUS_PCS_SYNCED = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_init_bcm8002 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_init_bcm8002(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %5 = load i32, i32* @MAC_STATUS, align 4
  %6 = call i32 @tr32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = load i32, i32* @INIT_COMPLETE, align 4
  %9 = call i64 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MAC_STATUS_PCS_SYNCED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %62

17:                                               ; preds = %11, %1
  %18 = load %struct.tg3*, %struct.tg3** %2, align 8
  %19 = call i32 @tg3_writephy(%struct.tg3* %18, i32 22, i32 32775)
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* @BMCR_RESET, align 4
  %23 = call i32 @tg3_writephy(%struct.tg3* %20, i32 %21, i32 %22)
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %29, %17
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 500
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %24

32:                                               ; preds = %24
  %33 = load %struct.tg3*, %struct.tg3** %2, align 8
  %34 = call i32 @tg3_writephy(%struct.tg3* %33, i32 16, i32 33809)
  %35 = load %struct.tg3*, %struct.tg3** %2, align 8
  %36 = call i32 @tg3_writephy(%struct.tg3* %35, i32 17, i32 2576)
  %37 = load %struct.tg3*, %struct.tg3** %2, align 8
  %38 = call i32 @tg3_writephy(%struct.tg3* %37, i32 24, i32 160)
  %39 = load %struct.tg3*, %struct.tg3** %2, align 8
  %40 = call i32 @tg3_writephy(%struct.tg3* %39, i32 22, i32 16895)
  %41 = load %struct.tg3*, %struct.tg3** %2, align 8
  %42 = call i32 @tg3_writephy(%struct.tg3* %41, i32 19, i32 1024)
  %43 = call i32 @udelay(i32 40)
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = call i32 @tg3_writephy(%struct.tg3* %44, i32 19, i32 0)
  %46 = load %struct.tg3*, %struct.tg3** %2, align 8
  %47 = call i32 @tg3_writephy(%struct.tg3* %46, i32 17, i32 2640)
  %48 = call i32 @udelay(i32 40)
  %49 = load %struct.tg3*, %struct.tg3** %2, align 8
  %50 = call i32 @tg3_writephy(%struct.tg3* %49, i32 17, i32 2576)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %56, %32
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 15000
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call i32 @udelay(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %51

59:                                               ; preds = %51
  %60 = load %struct.tg3*, %struct.tg3** %2, align 8
  %61 = call i32 @tg3_writephy(%struct.tg3* %60, i32 16, i32 32785)
  br label %62

62:                                               ; preds = %59, %16
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
