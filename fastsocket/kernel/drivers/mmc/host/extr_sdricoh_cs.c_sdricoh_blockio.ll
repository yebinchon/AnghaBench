; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_blockio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_blockio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdricoh_host = type { i32 }

@STATUS_READY_TO_READ = common dso_local global i32 0, align 4
@TRANSFER_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@R21C_STATUS = common dso_local global i32 0, align 4
@R230_DATA = common dso_local global i32 0, align 4
@STATUS_READY_TO_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdricoh_host*, i32, i32*, i32)* @sdricoh_blockio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_blockio(%struct.sdricoh_host* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdricoh_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sdricoh_host* %0, %struct.sdricoh_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %4
  %15 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %16 = load i32, i32* @STATUS_READY_TO_READ, align 4
  %17 = load i32, i32* @TRANSFER_TIMEOUT, align 4
  %18 = call i64 @sdricoh_query_status(%struct.sdricoh_host* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %104

23:                                               ; preds = %14
  %24 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %25 = load i32, i32* @R21C_STATUS, align 4
  %26 = call i32 @sdricoh_writel(%struct.sdricoh_host* %24, i32 %25, i32 24)
  br label %27

27:                                               ; preds = %52, %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27
  %31 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %32 = load i32, i32* @R230_DATA, align 4
  %33 = call i32 @sdricoh_readl(%struct.sdricoh_host* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @min(i32 %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %42, %30
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, 255
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = ashr i32 %48, 8
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  br label %39

52:                                               ; preds = %39
  br label %27

53:                                               ; preds = %27
  br label %97

54:                                               ; preds = %4
  %55 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %56 = load i32, i32* @STATUS_READY_TO_WRITE, align 4
  %57 = load i32, i32* @TRANSFER_TIMEOUT, align 4
  %58 = call i64 @sdricoh_query_status(%struct.sdricoh_host* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ETIMEDOUT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %104

63:                                               ; preds = %54
  %64 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %65 = load i32, i32* @R21C_STATUS, align 4
  %66 = call i32 @sdricoh_writel(%struct.sdricoh_host* %64, i32 %65, i32 24)
  br label %67

67:                                               ; preds = %91, %63
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @min(i32 %71, i32 4)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %79, %70
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = ashr i32 %80, 8
  store i32 %81, i32* %11, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 24
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %10, align 4
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.sdricoh_host*, %struct.sdricoh_host** %6, align 8
  %93 = load i32, i32* @R230_DATA, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @sdricoh_writel(%struct.sdricoh_host* %92, i32 %93, i32 %94)
  br label %67

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96, %53
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %104

103:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100, %60, %20
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i64 @sdricoh_query_status(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
