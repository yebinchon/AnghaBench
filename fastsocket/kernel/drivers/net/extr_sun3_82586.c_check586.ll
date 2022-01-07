; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sun3_82586.c_check586.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sun3_82586.c_check586.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.priv = type { i64, i8*, %struct.iscp_struct*, %struct.scp_struct* }
%struct.iscp_struct = type { i32 }
%struct.scp_struct = type { i64, i32 }

@SCP_DEFAULT_ADDRESS = common dso_local global i64 0, align 8
@SYSBUSVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32)* @check586 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check586(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.priv, align 8
  %9 = alloca %struct.priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.priv* %8, %struct.priv** %9, align 8
  %12 = call i64 @dvma_btov(i64 0)
  %13 = load %struct.priv*, %struct.priv** %9, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = call i64 @dvma_btov(i64 %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.priv*, %struct.priv** %9, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.priv*, %struct.priv** %9, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SCP_DEFAULT_ADDRESS, align 8
  %25 = add i64 %23, %24
  %26 = inttoptr i64 %25 to %struct.scp_struct*
  %27 = load %struct.priv*, %struct.priv** %9, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 3
  store %struct.scp_struct* %26, %struct.scp_struct** %28, align 8
  %29 = load %struct.priv*, %struct.priv** %9, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 3
  %31 = load %struct.scp_struct*, %struct.scp_struct** %30, align 8
  %32 = bitcast %struct.scp_struct* %31 to i8*
  %33 = call i32 @memset(i8* %32, i32 0, i32 16)
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %50, %3
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.priv*, %struct.priv** %9, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 3
  %41 = load %struct.scp_struct*, %struct.scp_struct** %40, align 8
  %42 = bitcast %struct.scp_struct* %41 to i8*
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %104

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %34

53:                                               ; preds = %34
  %54 = load i64, i64* @SYSBUSVAL, align 8
  %55 = load %struct.priv*, %struct.priv** %9, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 3
  %57 = load %struct.scp_struct*, %struct.scp_struct** %56, align 8
  %58 = getelementptr inbounds %struct.scp_struct, %struct.scp_struct* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load %struct.priv*, %struct.priv** %9, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 3
  %61 = load %struct.scp_struct*, %struct.scp_struct** %60, align 8
  %62 = getelementptr inbounds %struct.scp_struct, %struct.scp_struct* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SYSBUSVAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %104

67:                                               ; preds = %53
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = call i64 @dvma_btov(i64 %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = bitcast i8* %72 to %struct.iscp_struct*
  %74 = load %struct.priv*, %struct.priv** %9, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 2
  store %struct.iscp_struct* %73, %struct.iscp_struct** %75, align 8
  %76 = load %struct.priv*, %struct.priv** %9, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 2
  %78 = load %struct.iscp_struct*, %struct.iscp_struct** %77, align 8
  %79 = bitcast %struct.iscp_struct* %78 to i8*
  %80 = call i32 @memset(i8* %79, i32 0, i32 4)
  %81 = load %struct.priv*, %struct.priv** %9, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 2
  %83 = load %struct.iscp_struct*, %struct.iscp_struct** %82, align 8
  %84 = call i32 @make24(%struct.iscp_struct* %83)
  %85 = load %struct.priv*, %struct.priv** %9, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 3
  %87 = load %struct.scp_struct*, %struct.scp_struct** %86, align 8
  %88 = getelementptr inbounds %struct.scp_struct, %struct.scp_struct* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  %89 = load %struct.priv*, %struct.priv** %9, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 2
  %91 = load %struct.iscp_struct*, %struct.iscp_struct** %90, align 8
  %92 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = call i32 (...) @sun3_reset586()
  %94 = call i32 (...) @sun3_attn586()
  %95 = call i32 @DELAY(i32 1)
  %96 = load %struct.priv*, %struct.priv** %9, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 2
  %98 = load %struct.iscp_struct*, %struct.iscp_struct** %97, align 8
  %99 = getelementptr inbounds %struct.iscp_struct, %struct.iscp_struct* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %67
  store i32 0, i32* %4, align 4
  br label %104

103:                                              ; preds = %67
  store i32 1, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %102, %66, %48
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @dvma_btov(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @make24(%struct.iscp_struct*) #1

declare dso_local i32 @sun3_reset586(...) #1

declare dso_local i32 @sun3_attn586(...) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
