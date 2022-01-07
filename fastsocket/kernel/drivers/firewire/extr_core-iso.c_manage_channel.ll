; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_manage_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_manage_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }

@TCODE_LOCK_COMPARE_SWAP = common dso_local global i32 0, align 4
@SCODE_100 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*, i32, i32, i32, i32, i32, i32*)* @manage_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_channel(%struct.fw_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 5, i32* %20, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = call i32 @cpu_to_be32(i32 -1)
  br label %26

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %17, align 4
  store i32 %27, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %112, %26
  %29 = load i32, i32* %19, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %31, label %115

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %19, align 4
  %34 = shl i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %112

38:                                               ; preds = %31
  %39 = load i32, i32* %19, align 4
  %40 = sub nsw i32 31, %39
  %41 = shl i32 1, %40
  %42 = call i32 @cpu_to_be32(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %16, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %112

51:                                               ; preds = %38
  %52 = load i32, i32* %18, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %16, align 4
  %57 = xor i32 %55, %56
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.fw_card*, %struct.fw_card** %9, align 8
  %61 = load i32, i32* @TCODE_LOCK_COMPARE_SWAP, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @SCODE_100, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @fw_run_transaction(%struct.fw_card* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32* %66, i32 8)
  switch i32 %67, label %103 [
    i32 128, label %68
    i32 129, label %78
  ]

68:                                               ; preds = %51
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %19, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %75, %74 ]
  store i32 %77, i32* %8, align 4
  br label %118

78:                                               ; preds = %51
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %8, align 4
  br label %118

86:                                               ; preds = %78
  %87 = load i32*, i32** %15, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %16, align 4
  %94 = and i32 %92, %93
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %94, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %112

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %51, %102
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %20, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %107, %103
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111, %101, %50, %37
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %28

115:                                              ; preds = %28
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %84, %76
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fw_run_transaction(%struct.fw_card*, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
