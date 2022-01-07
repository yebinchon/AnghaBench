; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i8*, %struct.request*, i32 }
%struct.request = type { i32, i32 }
%struct.scsi_sense_hdr = type { i32, i32, i32, i32 }
%struct.scsi_disk = type { i32 }

@REQ_DISCARD = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@UNMAP = common dso_local global i8 0, align 1
@WRITE_SAME_16 = common dso_local global i8 0, align 1
@WRITE_SAME = common dso_local global i8 0, align 1
@SD_LBP_DISABLE = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_done(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %12 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %19 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %18)
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ 0, %16 ], [ %19, %17 ]
  store i32 %21, i32* %4, align 4
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 2
  %24 = load %struct.request*, %struct.request** %23, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.scsi_disk* @scsi_disk(i32 %26)
  store %struct.scsi_disk* %27, %struct.scsi_disk** %6, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 2
  %30 = load %struct.request*, %struct.request** %29, align 8
  store %struct.request* %30, %struct.request** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %10, align 1
  %36 = load %struct.request*, %struct.request** %7, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REQ_DISCARD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %20
  %43 = load i32, i32* %3, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.request*, %struct.request** %7, align 8
  %47 = call i32 @blk_rq_bytes(%struct.request* %46)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %49 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %48, i32 0)
  br label %55

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %52 = load %struct.request*, %struct.request** %7, align 8
  %53 = call i32 @blk_rq_bytes(%struct.request* %52)
  %54 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %20
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %61 = call i32 @scsi_command_normalize_sense(%struct.scsi_cmnd* %60, %struct.scsi_sense_hdr* %5)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %5)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @driver_byte(i32 %68)
  %70 = load i64, i64* @DRIVER_SENSE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %72
  br label %146

79:                                               ; preds = %75, %67
  %80 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %144 [
    i32 132, label %82
    i32 130, label %82
    i32 128, label %85
    i32 129, label %88
    i32 133, label %98
    i32 131, label %106
  ]

82:                                               ; preds = %79, %79
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %83)
  store i32 %84, i32* %4, align 4
  br label %145

85:                                               ; preds = %79
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %87 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %86)
  store i32 %87, i32* %4, align 4
  br label %145

88:                                               ; preds = %79
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %90 = call i32 @scsi_print_sense(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.scsi_cmnd* %89)
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %97 = call i32 @memset(i32 %95, i32 0, i32 %96)
  br label %145

98:                                               ; preds = %79
  %99 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 16
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %104 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %98
  br label %145

106:                                              ; preds = %79
  %107 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 16
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %112 = call i32 @sd_completed_bytes(%struct.scsi_cmnd* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 32
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 36
  br i1 %120, label %121, label %143

121:                                              ; preds = %117, %113
  %122 = load i8, i8* %10, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @UNMAP, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %121
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* @WRITE_SAME_16, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load i8, i8* %10, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @WRITE_SAME, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133, %127, %121
  %140 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %141 = load i32, i32* @SD_LBP_DISABLE, align 4
  %142 = call i32 @sd_config_discard(%struct.scsi_disk* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %133, %117
  br label %145

144:                                              ; preds = %79
  br label %145

145:                                              ; preds = %144, %143, %105, %88, %85, %82
  br label %146

146:                                              ; preds = %145, %78
  %147 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %148 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %147, i32 0, i32 2
  %149 = load %struct.request*, %struct.request** %148, align 8
  %150 = call i64 @rq_data_dir(%struct.request* %149)
  %151 = load i64, i64* @READ, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %155 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @sd_dif_complete(%struct.scsi_cmnd* %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %153, %146
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_command_normalize_sense(%struct.scsi_cmnd*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @sd_completed_bytes(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_print_sense(i8*, %struct.scsi_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @sd_dif_complete(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
