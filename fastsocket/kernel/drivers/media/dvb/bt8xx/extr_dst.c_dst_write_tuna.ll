; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_write_tuna.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_write_tuna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i64, i32, i32, i8**, i64, i64, i64, i64 }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"type_flags 0x%x \00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@HAS_POWER = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@HAS_LOCK = common dso_local global i32 0, align 4
@ATTEMPT_TUNE = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"DST Communication initialization failed.\00", align 1
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@FIXED_COMM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"write not successful\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"DST PIO disable failed !\00", align 1
@GET_ACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"read verify not successful.\00", align 1
@ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"write not acknowledged 0x%02x \00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dst_write_tuna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_write_tuna(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dst_state*, %struct.dst_state** %8, align 8
  store %struct.dst_state* %9, %struct.dst_state** %4, align 8
  %10 = load i32, i32* @verbose, align 4
  %11 = load i32, i32* @DST_INFO, align 4
  %12 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %13 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %10, i32 %11, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %23 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %25 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %31 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HAS_POWER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %38 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %39 = call i32 @dst_set_voltage(%struct.dvb_frontend* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* @HAS_LOCK, align 4
  %43 = load i32, i32* @ATTEMPT_TUNE, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %47 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %51 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %50, i32 0, i32 3
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %54 = call i64 @dst_comm_init(%struct.dst_state* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @verbose, align 4
  %58 = load i32, i32* @DST_DEBUG, align 4
  %59 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %155

60:                                               ; preds = %41
  %61 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %62 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %65 = sext i32 %64 to i64
  %66 = and i64 %63, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %70 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %68
  %75 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %76 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %75, i32 0, i32 4
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = call i8* @dst_check_sum(i8** %78, i32 9)
  %80 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %81 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 9
  store i8* %79, i8** %83, align 8
  %84 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %85 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %86 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %85, i32 0, i32 4
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = call i32 @write_dst(%struct.dst_state* %84, i8** %88, i32 10)
  store i32 %89, i32* %5, align 4
  br label %107

90:                                               ; preds = %68, %60
  %91 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %92 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %91, i32 0, i32 4
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  %95 = call i8* @dst_check_sum(i8** %94, i32 7)
  %96 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %97 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 9
  store i8* %95, i8** %99, align 8
  %100 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %101 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %102 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %101, i32 0, i32 4
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 2
  %105 = load i32, i32* @FIXED_COMM, align 4
  %106 = call i32 @write_dst(%struct.dst_state* %100, i8** %104, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %90, %74
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %112 = call i64 @dst_pio_disable(%struct.dst_state* %111)
  %113 = load i32, i32* @verbose, align 4
  %114 = load i32, i32* @DST_DEBUG, align 4
  %115 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %113, i32 %114, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %150

116:                                              ; preds = %107
  %117 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %118 = call i64 @dst_pio_disable(%struct.dst_state* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @verbose, align 4
  %122 = load i32, i32* @DST_DEBUG, align 4
  %123 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %121, i32 %122, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %155

124:                                              ; preds = %116
  %125 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %126 = load i32, i32* @GET_ACK, align 4
  %127 = call i64 @read_dst(%struct.dst_state* %125, i64* %6, i32 %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @verbose, align 4
  %131 = load i32, i32* @DST_DEBUG, align 4
  %132 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %130, i32 %131, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %155

133:                                              ; preds = %124
  %134 = load i64, i64* %6, align 8
  %135 = load i64, i64* @ACK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i32, i32* @verbose, align 4
  %139 = load i32, i32* @DST_DEBUG, align 4
  %140 = load i64, i64* %6, align 8
  %141 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %138, i32 %139, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %140)
  br label %155

142:                                              ; preds = %133
  %143 = load i32, i32* @ATTEMPT_TUNE, align 4
  %144 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %145 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %149 = call i32 @dst_get_tuna(%struct.dst_state* %148)
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %142, %110
  %151 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %152 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %151, i32 0, i32 3
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %5, align 4
  store i32 %154, i32* %2, align 4
  br label %161

155:                                              ; preds = %137, %129, %120, %56
  %156 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %157 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %156, i32 0, i32 3
  %158 = call i32 @mutex_unlock(i32* %157)
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @dst_set_voltage(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dst_comm_init(%struct.dst_state*) #1

declare dso_local i8* @dst_check_sum(i8**, i32) #1

declare dso_local i32 @write_dst(%struct.dst_state*, i8**, i32) #1

declare dso_local i64 @dst_pio_disable(%struct.dst_state*) #1

declare dso_local i64 @read_dst(%struct.dst_state*, i64*, i32) #1

declare dso_local i32 @dst_get_tuna(%struct.dst_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
