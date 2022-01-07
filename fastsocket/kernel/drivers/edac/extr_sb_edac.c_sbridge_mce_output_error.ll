; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_mce_output_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_sbridge_mce_output_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32** }
%struct.mce = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NON_FATAL\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Can't parse: it is not a mem\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"generic undef request\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"memory read\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"memory write\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"addr/cmd\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"memory scrubbing\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Error: socket got corrupted!\00", align 1
@NUM_CHANNELS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c" recoverable\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [128 x i8] c"%d %s error(s): %s on %s area %s%s: cpu=%d Err=%04x:%04x (ch=%d), addr = 0x%08llx => socket=%d, Channel=%ld(mask=%ld), rank=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"OVERFLOW\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.mce*)* @sbridge_mce_output_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbridge_mce_output_error(%struct.mem_ctl_info* %0, %struct.mce* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.mce*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.sbridge_pvt*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.mce* %1, %struct.mce** %4, align 8
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %29 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %28, i32 0, i32 0
  %30 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %29, align 8
  store %struct.sbridge_pvt* %30, %struct.sbridge_pvt** %6, align 8
  %31 = load %struct.mce*, %struct.mce** %4, align 8
  %32 = getelementptr inbounds %struct.mce, %struct.mce* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GET_BITFIELD(i32 %33, i32 0, i32 0)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mce*, %struct.mce** %4, align 8
  %36 = getelementptr inbounds %struct.mce, %struct.mce* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @GET_BITFIELD(i32 %37, i32 62, i32 62)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.mce*, %struct.mce** %4, align 8
  %40 = getelementptr inbounds %struct.mce, %struct.mce* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GET_BITFIELD(i32 %41, i32 61, i32 61)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.mce*, %struct.mce** %4, align 8
  %44 = getelementptr inbounds %struct.mce, %struct.mce* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GET_BITFIELD(i32 %45, i32 56, i32 56)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.mce*, %struct.mce** %4, align 8
  %48 = getelementptr inbounds %struct.mce, %struct.mce* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GET_BITFIELD(i32 %49, i32 38, i32 52)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.mce*, %struct.mce** %4, align 8
  %52 = getelementptr inbounds %struct.mce, %struct.mce* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GET_BITFIELD(i32 %53, i32 16, i32 31)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.mce*, %struct.mce** %4, align 8
  %56 = getelementptr inbounds %struct.mce, %struct.mce* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GET_BITFIELD(i32 %57, i32 0, i32 15)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.mce*, %struct.mce** %4, align 8
  %60 = getelementptr inbounds %struct.mce, %struct.mce* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @GET_BITFIELD(i32 %61, i32 0, i32 3)
  store i32 %62, i32* %18, align 4
  %63 = load %struct.mce*, %struct.mce** %4, align 8
  %64 = getelementptr inbounds %struct.mce, %struct.mce* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GET_BITFIELD(i32 %65, i32 4, i32 6)
  store i32 %66, i32* %19, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %71

70:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %17, align 4
  %73 = and i32 %72, 61312
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %85

76:                                               ; preds = %71
  %77 = load i32, i32* %19, align 4
  switch i32 %77, label %83 [
    i32 0, label %78
    i32 1, label %79
    i32 2, label %80
    i32 3, label %81
    i32 4, label %82
  ]

78:                                               ; preds = %76
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %84

79:                                               ; preds = %76
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %84

80:                                               ; preds = %76
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %84

81:                                               ; preds = %76
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %84

82:                                               ; preds = %76
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %84

83:                                               ; preds = %76
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %84

84:                                               ; preds = %83, %82, %81, %80, %79, %78
  br label %85

85:                                               ; preds = %84, %75
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %87 = load %struct.mce*, %struct.mce** %4, align 8
  %88 = getelementptr inbounds %struct.mce, %struct.mce* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i8*, i8** %27, align 8
  %91 = call i32 @get_memory_error_data(%struct.mem_ctl_info* %86, i64 %89, i32* %23, i64* %20, i32* %22, i8* %90)
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %25, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %179

95:                                               ; preds = %85
  %96 = load i32, i32* %23, align 4
  %97 = call %struct.mem_ctl_info* @get_mci_for_node_id(i32 %96)
  store %struct.mem_ctl_info* %97, %struct.mem_ctl_info** %5, align 8
  %98 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %99 = icmp ne %struct.mem_ctl_info* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %102 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %179

103:                                              ; preds = %95
  %104 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  store %struct.mem_ctl_info* %104, %struct.mem_ctl_info** %3, align 8
  %105 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %106 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %105, i32 0, i32 0
  %107 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %106, align 8
  store %struct.sbridge_pvt* %107, %struct.sbridge_pvt** %6, align 8
  %108 = load i32, i32* @NUM_CHANNELS, align 4
  %109 = call i64 @find_first_bit(i64* %20, i32 %108)
  store i64 %109, i64* %21, align 8
  %110 = load i32, i32* %22, align 4
  %111 = icmp slt i32 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 0, i32* %26, align 4
  br label %119

113:                                              ; preds = %103
  %114 = load i32, i32* %22, align 4
  %115 = icmp slt i32 %114, 8
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, i32* %26, align 4
  br label %118

117:                                              ; preds = %113
  store i32 2, i32* %26, align 4
  br label %118

118:                                              ; preds = %117, %116
  br label %119

119:                                              ; preds = %118, %112
  %120 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %121 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %120, i32 0, i32 0
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* %21, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %26, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %119
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %137

136:                                              ; preds = %132, %119
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8** %10, align 8
  br label %137

137:                                              ; preds = %136, %135
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i8*, i8** %27, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %148 = load %struct.mce*, %struct.mce** %4, align 8
  %149 = getelementptr inbounds %struct.mce, %struct.mce* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %17, align 4
  %153 = load i32, i32* %18, align 4
  %154 = load %struct.mce*, %struct.mce** %4, align 8
  %155 = getelementptr inbounds %struct.mce, %struct.mce* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load i32, i32* %22, align 4
  %161 = call i8* @kasprintf(i32 %138, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.13, i64 0, i64 0), i32 %139, i8* %140, i8* %141, i8* %142, i8* %143, i8* %147, i32 %150, i32 %151, i32 %152, i32 %153, i64 %156, i32 %157, i64 %158, i64 %159, i32 %160)
  store i8* %161, i8** %9, align 8
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @debugf0(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %162)
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %137
  %167 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %168 = load i32, i32* %24, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info* %167, i32 %168, i32 0, i32 0, i8* %169)
  br label %176

171:                                              ; preds = %137
  %172 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %173 = load i32, i32* %24, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info* %172, i32 %173, i32 0, i8* %174)
  br label %176

176:                                              ; preds = %171, %166
  %177 = load i8*, i8** %9, align 8
  %178 = call i32 @kfree(i8* %177)
  br label %179

179:                                              ; preds = %176, %100, %94
  ret void
}

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #1

declare dso_local i32 @get_memory_error_data(%struct.mem_ctl_info*, i64, i32*, i64*, i32*, i8*) #1

declare dso_local %struct.mem_ctl_info* @get_mci_for_node_id(i32) #1

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #1

declare dso_local i64 @find_first_bit(i64*, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i64, i32, i64, i64, i32) #1

declare dso_local i32 @debugf0(i8*, i8*) #1

declare dso_local i32 @edac_mc_handle_fbd_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #1

declare dso_local i32 @edac_mc_handle_fbd_ce(%struct.mem_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
