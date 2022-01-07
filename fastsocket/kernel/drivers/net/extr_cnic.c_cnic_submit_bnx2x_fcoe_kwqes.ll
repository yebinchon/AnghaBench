; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_bnx2x_fcoe_kwqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_bnx2x_fcoe_kwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.bnx2x = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown type of KWQE(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"KWQE(0x%x) failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* @cnic_submit_bnx2x_fcoe_kwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_bnx2x_fcoe_kwqes(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.kwqe**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kwqe*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.bnx2x* @netdev_priv(i32 %16)
  store %struct.bnx2x* %17, %struct.bnx2x** %8, align 8
  %18 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %19, i32 0, i32 1
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %123

26:                                               ; preds = %3
  %27 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %28 = call i32 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %123

33:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %118, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %34
  %39 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %39, i64 %41
  %43 = load %struct.kwqe*, %struct.kwqe** %42, align 8
  store %struct.kwqe* %43, %struct.kwqe** %13, align 8
  %44 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %45 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @KWQE_OPCODE(i32 %46)
  store i32 %47, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %89 [
    i32 130, label %49
    i32 129, label %59
    i32 131, label %69
    i32 132, label %73
    i32 133, label %77
    i32 134, label %81
    i32 128, label %85
  ]

49:                                               ; preds = %38
  %50 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %51 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %51, i64 %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @cnic_bnx2x_fcoe_init1(%struct.cnic_dev* %50, %struct.kwqe** %54, i32 %57, i32* %10)
  store i32 %58, i32* %11, align 4
  br label %95

59:                                               ; preds = %38
  %60 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %61 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %61, i64 %63
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @cnic_bnx2x_fcoe_ofld1(%struct.cnic_dev* %60, %struct.kwqe** %64, i32 %67, i32* %10)
  store i32 %68, i32* %11, align 4
  br label %95

69:                                               ; preds = %38
  %70 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %71 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %72 = call i32 @cnic_bnx2x_fcoe_enable(%struct.cnic_dev* %70, %struct.kwqe* %71)
  store i32 %72, i32* %11, align 4
  br label %95

73:                                               ; preds = %38
  %74 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %75 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %76 = call i32 @cnic_bnx2x_fcoe_disable(%struct.cnic_dev* %74, %struct.kwqe* %75)
  store i32 %76, i32* %11, align 4
  br label %95

77:                                               ; preds = %38
  %78 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %79 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %80 = call i32 @cnic_bnx2x_fcoe_destroy(%struct.cnic_dev* %78, %struct.kwqe* %79)
  store i32 %80, i32* %11, align 4
  br label %95

81:                                               ; preds = %38
  %82 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %83 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %84 = call i32 @cnic_bnx2x_fcoe_fw_destroy(%struct.cnic_dev* %82, %struct.kwqe* %83)
  store i32 %84, i32* %11, align 4
  br label %95

85:                                               ; preds = %38
  %86 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %87 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %88 = call i32 @cnic_bnx2x_fcoe_stat(%struct.cnic_dev* %86, %struct.kwqe* %87)
  store i32 %88, i32* %11, align 4
  br label %95

89:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %90 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %91 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @netdev_err(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %85, %81, %77, %73, %69, %59, %49
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %100 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @EAGAIN, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %108, %98
  %114 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %115 = load %struct.kwqe*, %struct.kwqe** %13, align 8
  %116 = call i32 @cnic_bnx2x_kwqe_err(%struct.cnic_dev* %114, %struct.kwqe* %115)
  br label %117

117:                                              ; preds = %113, %108
  br label %118

118:                                              ; preds = %117, %95
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %34

122:                                              ; preds = %34
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %30, %23
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i32 @KWQE_OPCODE(i32) #1

declare dso_local i32 @cnic_bnx2x_fcoe_init1(%struct.cnic_dev*, %struct.kwqe**, i32, i32*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_ofld1(%struct.cnic_dev*, %struct.kwqe**, i32, i32*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_enable(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_disable(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_destroy(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_fw_destroy(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_fcoe_stat(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @cnic_bnx2x_kwqe_err(%struct.cnic_dev*, %struct.kwqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
