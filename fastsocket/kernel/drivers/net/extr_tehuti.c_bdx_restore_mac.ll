; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_restore_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_restore_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"mac0=%x mac1=%x mac2=%x\0A\00", align 1
@regUNC_MAC0_A = common dso_local global i32 0, align 4
@regUNC_MAC1_A = common dso_local global i32 0, align 4
@regUNC_MAC2_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.bdx_priv*)* @bdx_restore_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_restore_mac(%struct.net_device* %0, %struct.bdx_priv* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.bdx_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.bdx_priv* %1, %struct.bdx_priv** %4, align 8
  %6 = load i32, i32* @ENTER, align 4
  %7 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %8 = load i32, i32* @regUNC_MAC0_A, align 4
  %9 = call i32 @READ_REG(%struct.bdx_priv* %7, i32 %8)
  %10 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %11 = load i32, i32* @regUNC_MAC1_A, align 4
  %12 = call i32 @READ_REG(%struct.bdx_priv* %10, i32 %11)
  %13 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %14 = load i32, i32* @regUNC_MAC2_A, align 4
  %15 = call i32 @READ_REG(%struct.bdx_priv* %13, i32 %14)
  %16 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %22, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %30 = load i32, i32* @regUNC_MAC2_A, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WRITE_REG(%struct.bdx_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %46 = load i32, i32* @regUNC_MAC1_A, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WRITE_REG(%struct.bdx_priv* %45, i32 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %3, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %54, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %62 = load i32, i32* @regUNC_MAC0_A, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WRITE_REG(%struct.bdx_priv* %61, i32 %62, i32 %63)
  %65 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %66 = load i32, i32* @regUNC_MAC0_A, align 4
  %67 = call i32 @READ_REG(%struct.bdx_priv* %65, i32 %66)
  %68 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %69 = load i32, i32* @regUNC_MAC1_A, align 4
  %70 = call i32 @READ_REG(%struct.bdx_priv* %68, i32 %69)
  %71 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %72 = load i32, i32* @regUNC_MAC2_A, align 4
  %73 = call i32 @READ_REG(%struct.bdx_priv* %71, i32 %72)
  %74 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73)
  %75 = call i32 (...) @RET()
  ret void
}

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

declare dso_local i32 @RET(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
