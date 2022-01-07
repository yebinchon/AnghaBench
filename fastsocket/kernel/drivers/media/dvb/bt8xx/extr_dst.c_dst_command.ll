; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i64*, i32 }

@verbose = common dso_local global i32 0, align 4
@DST_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"DST Communication Initialization Failed.\00", align 1
@DST_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Trying to recover.. \00", align 1
@DST_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Recovery Failed.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PIO Disable Failed.\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4
@GET_ACK = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@ACK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"write not acknowledged 0x%02x \00", align 1
@NO_DELAY = common dso_local global i32 0, align 4
@FIXED_COMM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Recovery failed.\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"checksum failure\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, i64*, i64)* @dst_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_command(%struct.dst_state* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %13 = call i64 @dst_comm_init(%struct.dst_state* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @verbose, align 4
  %17 = load i32, i32* @DST_NOTICE, align 4
  %18 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %16, i32 %17, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %155

19:                                               ; preds = %3
  %20 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @write_dst(%struct.dst_state* %20, i64* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32, i32* @verbose, align 4
  %27 = load i32, i32* @DST_INFO, align 4
  %28 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %26, i32 %27, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %30 = call i64 @dst_error_recovery(%struct.dst_state* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @verbose, align 4
  %34 = load i32, i32* @DST_ERROR, align 4
  %35 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %33, i32 %34, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %155

36:                                               ; preds = %25
  br label %155

37:                                               ; preds = %19
  %38 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %39 = call i64 @dst_pio_disable(%struct.dst_state* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @verbose, align 4
  %43 = load i32, i32* @DST_ERROR, align 4
  %44 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %42, i32 %43, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %155

45:                                               ; preds = %37
  %46 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %47 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = call i32 @mdelay(i32 3)
  br label %54

54:                                               ; preds = %52, %45
  %55 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %56 = load i32, i32* @GET_ACK, align 4
  %57 = call i64 @read_dst(%struct.dst_state* %55, i64* %8, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load i32, i32* @verbose, align 4
  %61 = load i32, i32* @DST_DEBUG, align 4
  %62 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %60, i32 %61, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %64 = call i64 @dst_error_recovery(%struct.dst_state* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @verbose, align 4
  %68 = load i32, i32* @DST_INFO, align 4
  %69 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %67, i32 %68, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %155

70:                                               ; preds = %59
  br label %155

71:                                               ; preds = %54
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @ACK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* @verbose, align 4
  %77 = load i32, i32* @DST_INFO, align 4
  %78 = load i64, i64* %8, align 8
  %79 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %76, i32 %77, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %155

80:                                               ; preds = %71
  %81 = load i64, i64* %7, align 8
  %82 = icmp sge i64 %81, 2
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i64*, i64** %6, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 1
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i64*, i64** %6, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %88
  br label %155

99:                                               ; preds = %93, %83, %80
  %100 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %101 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @mdelay(i32 3)
  br label %110

108:                                              ; preds = %99
  %109 = call i32 @udelay(i32 2000)
  br label %110

110:                                              ; preds = %108, %106
  %111 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %112 = load i32, i32* @NO_DELAY, align 4
  %113 = call i32 @dst_wait_dst_ready(%struct.dst_state* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %155

116:                                              ; preds = %110
  %117 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %118 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %119 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %118, i32 0, i32 1
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* @FIXED_COMM, align 4
  %122 = call i64 @read_dst(%struct.dst_state* %117, i64* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %116
  %125 = load i32, i32* @verbose, align 4
  %126 = load i32, i32* @DST_DEBUG, align 4
  %127 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %125, i32 %126, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %129 = call i64 @dst_error_recovery(%struct.dst_state* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32, i32* @verbose, align 4
  %133 = load i32, i32* @DST_INFO, align 4
  %134 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %132, i32 %133, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %155

135:                                              ; preds = %124
  br label %155

136:                                              ; preds = %116
  %137 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %138 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %137, i32 0, i32 1
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 7
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %143 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = call i64 @dst_check_sum(i64* %144, i32 7)
  %146 = icmp ne i64 %141, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %136
  %148 = load i32, i32* @verbose, align 4
  %149 = load i32, i32* @DST_INFO, align 4
  %150 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %148, i32 %149, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %155

151:                                              ; preds = %136
  %152 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %153 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %152, i32 0, i32 2
  %154 = call i32 @mutex_unlock(i32* %153)
  store i32 0, i32* %4, align 4
  br label %161

155:                                              ; preds = %147, %135, %131, %115, %98, %75, %70, %66, %41, %36, %32, %15
  %156 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %157 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %156, i32 0, i32 2
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %155, %151
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @write_dst(%struct.dst_state*, i64*, i64) #1

declare dso_local i64 @dst_error_recovery(%struct.dst_state*) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i64*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dst_wait_dst_ready(%struct.dst_state*, i32) #1

declare dso_local i64 @dst_check_sum(i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
