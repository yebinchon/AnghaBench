; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_scsi_to_dev_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata.c_scsi_to_dev_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostdata = type { i32, %struct.mscp* }
%struct.mscp = type { i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i8* }

@scsi_to_dev_dir.data_out_cmds = internal constant [31 x i8] c"\0A*\15U\04\07\18\1D$.01289:;=?@AL\AA\AE\B0\B1\B2\B6\EA\1B]", align 16
@scsi_to_dev_dir.data_none_cmds = internal constant [28 x i8] c"\01\0B\10\11\13\16\17\19+\1E,\AC/\AF3\B356EGHI\A9K\A5\A6\B5\00", align 16
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DMA_NONE = common dso_local global i64 0, align 8
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s: qcomm, invalid SCpnt->sc_data_direction.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.hostdata*)* @scsi_to_dev_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_to_dev_dir(i32 %0, %struct.hostdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mscp*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hostdata* %1, %struct.hostdata** %4, align 8
  %8 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %9 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %8, i32 0, i32 1
  %10 = load %struct.mscp*, %struct.mscp** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mscp, %struct.mscp* %10, i64 %12
  store %struct.mscp* %13, %struct.mscp** %6, align 8
  %14 = load %struct.mscp*, %struct.mscp** %6, align 8
  %15 = getelementptr inbounds %struct.mscp, %struct.mscp* %14, i32 0, i32 2
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %7, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.mscp*, %struct.mscp** %6, align 8
  %24 = getelementptr inbounds %struct.mscp, %struct.mscp* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.mscp*, %struct.mscp** %6, align 8
  %26 = getelementptr inbounds %struct.mscp, %struct.mscp* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %122

27:                                               ; preds = %2
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_TO_DEVICE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.mscp*, %struct.mscp** %6, align 8
  %35 = getelementptr inbounds %struct.mscp, %struct.mscp* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.mscp*, %struct.mscp** %6, align 8
  %37 = getelementptr inbounds %struct.mscp, %struct.mscp* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %122

38:                                               ; preds = %27
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.mscp*, %struct.mscp** %6, align 8
  %46 = getelementptr inbounds %struct.mscp, %struct.mscp* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.mscp*, %struct.mscp** %6, align 8
  %48 = getelementptr inbounds %struct.mscp, %struct.mscp* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  br label %122

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.hostdata*, %struct.hostdata** %4, align 8
  %59 = getelementptr inbounds %struct.hostdata, %struct.hostdata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %84, %62
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @scsi_to_dev_dir.data_out_cmds, i64 0, i64 0))
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [31 x i8], [31 x i8]* @scsi_to_dev_dir.data_out_cmds, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %73, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %67
  %81 = load %struct.mscp*, %struct.mscp** %6, align 8
  %82 = getelementptr inbounds %struct.mscp, %struct.mscp* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %87

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %63

87:                                               ; preds = %80, %63
  %88 = load %struct.mscp*, %struct.mscp** %6, align 8
  %89 = getelementptr inbounds %struct.mscp, %struct.mscp* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.mscp*, %struct.mscp** %6, align 8
  %95 = getelementptr inbounds %struct.mscp, %struct.mscp* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br i1 %92, label %96, label %122

96:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %118, %96
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @scsi_to_dev_dir.data_none_cmds, i64 0, i64 0))
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %97
  %102 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %103 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [28 x i8], [28 x i8]* @scsi_to_dev_dir.data_none_cmds, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp eq i32 %107, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load %struct.mscp*, %struct.mscp** %6, align 8
  %116 = getelementptr inbounds %struct.mscp, %struct.mscp* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %121

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %97

121:                                              ; preds = %114, %97
  br label %122

122:                                              ; preds = %22, %33, %44, %121, %87
  ret void
}

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
