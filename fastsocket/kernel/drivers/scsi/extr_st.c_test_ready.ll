; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_test_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_test_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, %struct.st_cmdstatus }
%struct.st_cmdstatus = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.st_request = type { i32 }

@CHKRES_READY = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4
@ST_BLOCK_SECONDS = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i8 0, align 1
@DMA_NONE = common dso_local global i32 0, align 4
@MAX_READY_RETRIES = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@MAX_ATTENTIONS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NOT_READY = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@SCSI_2 = common dso_local global i64 0, align 8
@CHKRES_NO_TAPE = common dso_local global i32 0, align 4
@CHKRES_NOT_READY = common dso_local global i32 0, align 4
@CHKRES_NEW_SESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_tape*, i32)* @test_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ready(%struct.scsi_tape* %0, i32 %1) #0 {
  %3 = alloca %struct.scsi_tape*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.st_request*, align 8
  %14 = alloca %struct.st_cmdstatus*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @CHKRES_READY, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store %struct.st_request* null, %struct.st_request** %13, align 8
  %20 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.st_cmdstatus* %23, %struct.st_cmdstatus** %14, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ST_BLOCK_SECONDS, align 4
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %90, %70, %29
  %32 = getelementptr inbounds i8, i8* %19, i64 0
  %33 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %34 = call i32 @memset(i8* %32, i32 0, i32 %33)
  %35 = load i8, i8* @TEST_UNIT_READY, align 1
  %36 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %35, i8* %36, align 16
  %37 = load %struct.st_request*, %struct.st_request** %13, align 8
  %38 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %39 = load i32, i32* @DMA_NONE, align 4
  %40 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MAX_READY_RETRIES, align 4
  %44 = call %struct.st_request* @st_do_scsi(%struct.st_request* %37, %struct.scsi_tape* %38, i8* %19, i32 0, i32 %39, i32 %42, i32 %43, i32 1)
  store %struct.st_request* %44, %struct.st_request** %13, align 8
  %45 = load %struct.st_request*, %struct.st_request** %13, align 8
  %46 = icmp ne %struct.st_request* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %31
  %48 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %9, align 4
  br label %131

53:                                               ; preds = %31
  %54 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %14, align 8
  %55 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %113

58:                                               ; preds = %53
  %59 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %14, align 8
  %60 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @UNIT_ATTENTION, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %58
  store i32 1, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MAX_ATTENTIONS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %31

73:                                               ; preds = %66
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %131

76:                                               ; preds = %58
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @NOT_READY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = call i64 @msleep_interruptible(i32 1000)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @EINTR, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %131

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %31

93:                                               ; preds = %80
  %94 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %95 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SCSI_2, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %93
  %102 = load %struct.st_cmdstatus*, %struct.st_cmdstatus** %14, align 8
  %103 = getelementptr inbounds %struct.st_cmdstatus, %struct.st_cmdstatus* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 58
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @CHKRES_NO_TAPE, align 4
  store i32 %108, i32* %9, align 4
  br label %111

109:                                              ; preds = %101, %93
  %110 = load i32, i32* @CHKRES_NOT_READY, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %107
  br label %131

112:                                              ; preds = %76
  br label %113

113:                                              ; preds = %112, %53
  %114 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %115 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @CHKRES_NEW_SESSION, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @CHKRES_READY, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %128, %113
  br label %131

131:                                              ; preds = %130, %111, %87, %73, %47
  %132 = load %struct.st_request*, %struct.st_request** %13, align 8
  %133 = icmp ne %struct.st_request* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.st_request*, %struct.st_request** %13, align 8
  %136 = call i32 @st_release_request(%struct.st_request* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %9, align 4
  %139 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %139)
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.st_request* @st_do_scsi(%struct.st_request*, %struct.scsi_tape*, i8*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @msleep_interruptible(i32) #2

declare dso_local i32 @st_release_request(%struct.st_request*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
