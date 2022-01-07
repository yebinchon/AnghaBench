; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_scsi_to_dev_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_u14-34f.c_scsi_to_dev_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mscp = type { i64, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, i8* }
%struct.TYPE_2__ = type { %struct.mscp* }

@scsi_to_dev_dir.data_out_cmds = internal constant [31 x i8] c"\0A*\15U\04\07\18\1D$.01289:;=?@AL\AA\AE\B0\B1\B2\B6\EA\1B]", align 16
@scsi_to_dev_dir.data_none_cmds = internal constant [28 x i8] c"\01\0B\10\11\13\16\17\19+\1E,\AC/\AF3\B356EGHI\A9K\A5\A6\B5\00", align 16
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@DTD_IN = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@DTD_OUT = common dso_local global i8* null, align 8
@DMA_NONE = common dso_local global i64 0, align 8
@DTD_NONE = common dso_local global i8* null, align 8
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s: qcomm, invalid SCpnt->sc_data_direction.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @scsi_to_dev_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_to_dev_dir(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mscp*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_2__* @HD(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mscp*, %struct.mscp** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mscp, %struct.mscp* %11, i64 %13
  store %struct.mscp* %14, %struct.mscp** %6, align 8
  %15 = load %struct.mscp*, %struct.mscp** %6, align 8
  %16 = getelementptr inbounds %struct.mscp, %struct.mscp* %15, i32 0, i32 1
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %7, align 8
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i64, i64* @DTD_IN, align 8
  %25 = load %struct.mscp*, %struct.mscp** %6, align 8
  %26 = getelementptr inbounds %struct.mscp, %struct.mscp* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %125

27:                                               ; preds = %2
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMA_TO_DEVICE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i8*, i8** @DTD_OUT, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load %struct.mscp*, %struct.mscp** %6, align 8
  %37 = getelementptr inbounds %struct.mscp, %struct.mscp* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %125

38:                                               ; preds = %27
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_NONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8*, i8** @DTD_NONE, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.mscp*, %struct.mscp** %6, align 8
  %48 = getelementptr inbounds %struct.mscp, %struct.mscp* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %125

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
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @BN(i32 %58)
  %60 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i64, i64* @DTD_IN, align 8
  %63 = load %struct.mscp*, %struct.mscp** %6, align 8
  %64 = getelementptr inbounds %struct.mscp, %struct.mscp* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %88, %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @scsi_to_dev_dir.data_out_cmds, i64 0, i64 0))
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [31 x i8], [31 x i8]* @scsi_to_dev_dir.data_out_cmds, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %69
  %83 = load i8*, i8** @DTD_OUT, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.mscp*, %struct.mscp** %6, align 8
  %86 = getelementptr inbounds %struct.mscp, %struct.mscp* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %91

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %65

91:                                               ; preds = %82, %65
  %92 = load %struct.mscp*, %struct.mscp** %6, align 8
  %93 = getelementptr inbounds %struct.mscp, %struct.mscp* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @DTD_IN, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %125

97:                                               ; preds = %91
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %121, %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @scsi_to_dev_dir.data_none_cmds, i64 0, i64 0))
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %98
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [28 x i8], [28 x i8]* @scsi_to_dev_dir.data_none_cmds, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %108, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %102
  %116 = load i8*, i8** @DTD_NONE, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.mscp*, %struct.mscp** %6, align 8
  %119 = getelementptr inbounds %struct.mscp, %struct.mscp* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  br label %124

120:                                              ; preds = %102
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %98

124:                                              ; preds = %115, %98
  br label %125

125:                                              ; preds = %23, %33, %44, %124, %91
  ret void
}

declare dso_local %struct.TYPE_2__* @HD(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @BN(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
