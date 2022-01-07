; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sun3_82586.c_alloc586.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sun3_82586.c_alloc586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.priv = type { %struct.scb_struct*, i64, %struct.iscp_struct*, %struct.scp_struct*, i64 }
%struct.scb_struct = type { i32 }
%struct.iscp_struct = type { i32, i8*, i32 }
%struct.scp_struct = type { i32, i8* }

@SCP_DEFAULT_ADDRESS = common dso_local global i64 0, align 8
@SYSBUSVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Init-Problems (alloc).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @alloc586 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc586(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.priv* @netdev_priv(%struct.net_device* %4)
  store %struct.priv* %5, %struct.priv** %3, align 8
  %6 = call i32 (...) @sun3_reset586()
  %7 = call i32 @DELAY(i32 1)
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCP_DEFAULT_ADDRESS, align 8
  %12 = add nsw i64 %10, %11
  %13 = inttoptr i64 %12 to %struct.scp_struct*
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 3
  store %struct.scp_struct* %13, %struct.scp_struct** %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.iscp_struct* @dvma_btov(i32 %18)
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  store %struct.iscp_struct* %19, %struct.iscp_struct** %21, align 8
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load %struct.iscp_struct*, %struct.iscp_struct** %23, align 8
  %25 = bitcast %struct.iscp_struct* %24 to i8*
  %26 = getelementptr inbounds i8, i8* %25, i64 24
  %27 = bitcast i8* %26 to %struct.scb_struct*
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  store %struct.scb_struct* %27, %struct.scb_struct** %29, align 8
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 2
  %32 = load %struct.iscp_struct*, %struct.iscp_struct** %31, align 8
  %33 = bitcast %struct.iscp_struct* %32 to i8*
  %34 = call i32 @memset(i8* %33, i32 0, i32 24)
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 3
  %37 = load %struct.scp_struct*, %struct.scp_struct** %36, align 8
  %38 = bitcast %struct.scp_struct* %37 to i8*
  %39 = call i32 @memset(i8* %38, i32 0, i32 16)
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 2
  %42 = load %struct.iscp_struct*, %struct.iscp_struct** %41, align 8
  %43 = call i8* @make24(%struct.iscp_struct* %42)
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 3
  %46 = load %struct.scp_struct*, %struct.scp_struct** %45, align 8
  %47 = getelementptr inbounds %struct.scp_struct, %struct.scp_struct* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i32, i32* @SYSBUSVAL, align 4
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  %51 = load %struct.scp_struct*, %struct.scp_struct** %50, align 8
  %52 = getelementptr inbounds %struct.scp_struct, %struct.scp_struct* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 8
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = load %struct.scb_struct*, %struct.scb_struct** %54, align 8
  %56 = call i32 @make16(%struct.scb_struct* %55)
  %57 = load %struct.priv*, %struct.priv** %3, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  %59 = load %struct.iscp_struct*, %struct.iscp_struct** %58, align 8
  %60 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %59, i32 0, i32 2
  store i32 %56, i32* %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.iscp_struct* @dvma_btov(i32 %63)
  %65 = call i8* @make24(%struct.iscp_struct* %64)
  %66 = load %struct.priv*, %struct.priv** %3, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 2
  %68 = load %struct.iscp_struct*, %struct.iscp_struct** %67, align 8
  %69 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load %struct.priv*, %struct.priv** %3, align 8
  %71 = getelementptr inbounds %struct.priv, %struct.priv* %70, i32 0, i32 2
  %72 = load %struct.iscp_struct*, %struct.iscp_struct** %71, align 8
  %73 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = call i32 (...) @sun3_reset586()
  %75 = call i32 (...) @sun3_attn586()
  %76 = call i32 @DELAY(i32 1)
  %77 = load %struct.priv*, %struct.priv** %3, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 2
  %79 = load %struct.iscp_struct*, %struct.iscp_struct** %78, align 8
  %80 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %1
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %83, %1
  %89 = load %struct.priv*, %struct.priv** %3, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.priv*, %struct.priv** %3, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 0
  %93 = load %struct.scb_struct*, %struct.scb_struct** %92, align 8
  %94 = bitcast %struct.scb_struct* %93 to i8*
  %95 = call i32 @memset(i8* %94, i32 0, i32 4)
  ret void
}

declare dso_local %struct.priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sun3_reset586(...) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local %struct.iscp_struct* @dvma_btov(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @make24(%struct.iscp_struct*) #1

declare dso_local i32 @make16(%struct.scb_struct*) #1

declare dso_local i32 @sun3_attn586(...) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
