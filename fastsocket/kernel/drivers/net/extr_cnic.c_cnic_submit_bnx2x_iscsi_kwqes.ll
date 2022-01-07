; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_bnx2x_iscsi_kwqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_bnx2x_iscsi_kwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32 }
%struct.kwqe = type { i32 }

@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown type of KWQE(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"KWQE(0x%x) failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* @cnic_submit_bnx2x_iscsi_kwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_bnx2x_iscsi_kwqes(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca %struct.kwqe**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kwqe*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %14 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %124

21:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %119, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %123

26:                                               ; preds = %22
  %27 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %27, i64 %29
  %31 = load %struct.kwqe*, %struct.kwqe** %30, align 8
  store %struct.kwqe* %31, %struct.kwqe** %12, align 8
  %32 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %33 = getelementptr inbounds %struct.kwqe, %struct.kwqe* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @KWQE_OPCODE(i32 %34)
  store i32 %35, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  switch i32 %36, label %90 [
    i32 137, label %37
    i32 136, label %41
    i32 135, label %45
    i32 134, label %55
    i32 138, label %59
    i32 132, label %63
    i32 133, label %73
    i32 130, label %77
    i32 131, label %81
    i32 129, label %85
    i32 128, label %89
  ]

37:                                               ; preds = %26
  %38 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %39 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %40 = call i32 @cnic_bnx2x_iscsi_init1(%struct.cnic_dev* %38, %struct.kwqe* %39)
  store i32 %40, i32* %10, align 4
  br label %96

41:                                               ; preds = %26
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %43 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %44 = call i32 @cnic_bnx2x_iscsi_init2(%struct.cnic_dev* %42, %struct.kwqe* %43)
  store i32 %44, i32* %10, align 4
  br label %96

45:                                               ; preds = %26
  %46 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %47 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %47, i64 %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i32 @cnic_bnx2x_iscsi_ofld1(%struct.cnic_dev* %46, %struct.kwqe** %50, i32 %53, i32* %9)
  store i32 %54, i32* %10, align 4
  br label %96

55:                                               ; preds = %26
  %56 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %57 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %58 = call i32 @cnic_bnx2x_iscsi_update(%struct.cnic_dev* %56, %struct.kwqe* %57)
  store i32 %58, i32* %10, align 4
  br label %96

59:                                               ; preds = %26
  %60 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %61 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %62 = call i32 @cnic_bnx2x_iscsi_destroy(%struct.cnic_dev* %60, %struct.kwqe* %61)
  store i32 %62, i32* %10, align 4
  br label %96

63:                                               ; preds = %26
  %64 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %65 = load %struct.kwqe**, %struct.kwqe*** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %65, i64 %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @cnic_bnx2x_connect(%struct.cnic_dev* %64, %struct.kwqe** %68, i32 %71, i32* %9)
  store i32 %72, i32* %10, align 4
  br label %96

73:                                               ; preds = %26
  %74 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %75 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %76 = call i32 @cnic_bnx2x_close(%struct.cnic_dev* %74, %struct.kwqe* %75)
  store i32 %76, i32* %10, align 4
  br label %96

77:                                               ; preds = %26
  %78 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %79 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %80 = call i32 @cnic_bnx2x_reset(%struct.cnic_dev* %78, %struct.kwqe* %79)
  store i32 %80, i32* %10, align 4
  br label %96

81:                                               ; preds = %26
  %82 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %83 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %84 = call i32 @cnic_bnx2x_offload_pg(%struct.cnic_dev* %82, %struct.kwqe* %83)
  store i32 %84, i32* %10, align 4
  br label %96

85:                                               ; preds = %26
  %86 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %87 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %88 = call i32 @cnic_bnx2x_update_pg(%struct.cnic_dev* %86, %struct.kwqe* %87)
  store i32 %88, i32* %10, align 4
  br label %96

89:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %96

90:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  %91 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %92 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @netdev_err(i32 %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %89, %85, %81, %77, %73, %63, %59, %55, %45, %41, %37
  %97 = load i32, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %101 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @netdev_err(i32 %102, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %99
  %115 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %116 = load %struct.kwqe*, %struct.kwqe** %12, align 8
  %117 = call i32 @cnic_bnx2x_kwqe_err(%struct.cnic_dev* %115, %struct.kwqe* %116)
  br label %118

118:                                              ; preds = %114, %109
  br label %119

119:                                              ; preds = %118, %96
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %22

123:                                              ; preds = %22
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %18
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @KWQE_OPCODE(i32) #1

declare dso_local i32 @cnic_bnx2x_iscsi_init1(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_iscsi_init2(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_iscsi_ofld1(%struct.cnic_dev*, %struct.kwqe**, i32, i32*) #1

declare dso_local i32 @cnic_bnx2x_iscsi_update(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_iscsi_destroy(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_connect(%struct.cnic_dev*, %struct.kwqe**, i32, i32*) #1

declare dso_local i32 @cnic_bnx2x_close(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_reset(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_offload_pg(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @cnic_bnx2x_update_pg(%struct.cnic_dev*, %struct.kwqe*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @cnic_bnx2x_kwqe_err(%struct.cnic_dev*, %struct.kwqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
