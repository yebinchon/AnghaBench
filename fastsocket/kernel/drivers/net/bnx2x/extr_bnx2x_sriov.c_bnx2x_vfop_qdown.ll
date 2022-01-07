; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"case: BNX2X_VFOP_QTEARDOWN_QDTOR\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"new state: BNX2X_VFOP_QTEARDOWN_DONE\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"returned from cmd\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"QTEARDOWN[%d:%d] error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_qdown(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %9, %struct.bnx2x_virtf* %10)
  store %struct.bnx2x_vfop* %11, %struct.bnx2x_vfop** %5, align 8
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %101

25:                                               ; preds = %2
  %26 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %8, i32 0, i32 0
  store void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qdown to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)** %32, align 8
  %33 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %8, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %115 [
    i32 128, label %35
    i32 131, label %50
    i32 132, label %65
    i32 129, label %80
    i32 130, label %110
  ]

35:                                               ; preds = %25
  %36 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %36, i32 0, i32 0
  store i32 131, i32* %37, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @bnx2x_vfop_rxmode_cmd(%struct.bnx2x* %38, %struct.bnx2x_virtf* %39, %struct.bnx2x_vfop_cmd* %8, i32 %40, i32 0)
  %42 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %43 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %101

49:                                               ; preds = %35
  br label %118

50:                                               ; preds = %25
  %51 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %51, i32 0, i32 0
  store i32 132, i32* %52, align 8
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @bnx2x_vfop_vlan_delall_cmd(%struct.bnx2x* %53, %struct.bnx2x_virtf* %54, %struct.bnx2x_vfop_cmd* %8, i32 %55, i32 0)
  %57 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %58 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %101

64:                                               ; preds = %50
  br label %118

65:                                               ; preds = %25
  %66 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %66, i32 0, i32 0
  store i32 129, i32* %67, align 8
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @bnx2x_vfop_mac_delall_cmd(%struct.bnx2x* %68, %struct.bnx2x_virtf* %69, %struct.bnx2x_vfop_cmd* %8, i32 %70, i32 0)
  %72 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %73 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %75 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %101

79:                                               ; preds = %65
  br label %118

80:                                               ; preds = %25
  %81 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %82 = call i32 (i32, i8*, ...) @DP(i32 %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %83, i32 0, i32 0
  store i32 130, i32* %84, align 8
  %85 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %86 = call i32 (i32, i8*, ...) @DP(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %88 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i64 @bnx2x_vfop_qdtor_cmd(%struct.bnx2x* %87, %struct.bnx2x_virtf* %88, %struct.bnx2x_vfop_cmd* %8, i32 %89)
  %91 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %92 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %94 = call i32 (i32, i8*, ...) @DP(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %96 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  br label %101

100:                                              ; preds = %80
  br label %118

101:                                              ; preds = %99, %78, %63, %48, %24
  %102 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %103 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105, i64 %108)
  br label %110

110:                                              ; preds = %25, %101
  %111 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %112 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %113 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %114 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %111, %struct.bnx2x_virtf* %112, %struct.bnx2x_vfop* %113)
  br label %118

115:                                              ; preds = %25
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @bnx2x_vfop_default(i32 %116)
  br label %118

118:                                              ; preds = %49, %64, %79, %100, %110, %115
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @bnx2x_vfop_rxmode_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i32) #1

declare dso_local i64 @bnx2x_vfop_vlan_delall_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i32) #1

declare dso_local i64 @bnx2x_vfop_mac_delall_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i32) #1

declare dso_local i64 @bnx2x_vfop_qdtor_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
