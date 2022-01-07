; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_block_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_block_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SD_LBP_UNMAP = common dso_local global i32 0, align 4
@SD_LBP_WS16 = common dso_local global i32 0, align 4
@SD_LBP_WS10 = common dso_local global i32 0, align 4
@SD_LBP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*)* @sd_read_block_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_block_limits(%struct.scsi_disk* %0) #0 {
  %2 = alloca %struct.scsi_disk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %2, align 8
  %8 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %8, i32 0, i32 10
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  store i32 64, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 64, i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @scsi_get_vpd_page(%struct.TYPE_4__* %20, i32 176, i8* %21, i32 64)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %1
  br label %160

25:                                               ; preds = %17
  %26 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %27 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %26, i32 0, i32 9
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 6
  %33 = call i32 @get_unaligned_be16(i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = mul i32 %33, %34
  %36 = call i32 @blk_queue_io_min(i32 %30, i32 %35)
  %37 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %38 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %37, i32 0, i32 9
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 12
  %44 = call i32 @get_unaligned_be32(i8* %43)
  %45 = load i32, i32* %3, align 4
  %46 = mul i32 %44, %45
  %47 = call i32 @blk_queue_io_opt(i32 %41, i32 %46)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 3
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 60
  br i1 %52, label %53, label %159

53:                                               ; preds = %25
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 36
  %56 = call i32 @get_unaligned_be64(i8* %55)
  %57 = call i64 @min_not_zero(i32 %56, i32 -1)
  %58 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %58, i32 0, i32 8
  store i64 %57, i64* %59, align 8
  %60 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %61 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  br label %160

65:                                               ; preds = %53
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 20
  %68 = call i32 @get_unaligned_be32(i8* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = call i32 @get_unaligned_be32(i8* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %80 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %74, %65
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 28
  %84 = call i32 @get_unaligned_be32(i8* %83)
  %85 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 32
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 128
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %81
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 32
  %96 = call i32 @get_unaligned_be32(i8* %95)
  %97 = and i32 %96, 2147483647
  %98 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %99 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %81
  %101 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %102 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %112 = load i32, i32* @SD_LBP_UNMAP, align 4
  %113 = call i32 @sd_config_discard(%struct.scsi_disk* %111, i32 %112)
  br label %118

114:                                              ; preds = %105
  %115 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %116 = load i32, i32* @SD_LBP_WS16, align 4
  %117 = call i32 @sd_config_discard(%struct.scsi_disk* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %110
  br label %158

119:                                              ; preds = %100
  %120 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %121 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %126 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %131 = load i32, i32* @SD_LBP_UNMAP, align 4
  %132 = call i32 @sd_config_discard(%struct.scsi_disk* %130, i32 %131)
  br label %157

133:                                              ; preds = %124, %119
  %134 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %135 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %140 = load i32, i32* @SD_LBP_WS16, align 4
  %141 = call i32 @sd_config_discard(%struct.scsi_disk* %139, i32 %140)
  br label %156

142:                                              ; preds = %133
  %143 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %144 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %149 = load i32, i32* @SD_LBP_WS10, align 4
  %150 = call i32 @sd_config_discard(%struct.scsi_disk* %148, i32 %149)
  br label %155

151:                                              ; preds = %142
  %152 = load %struct.scsi_disk*, %struct.scsi_disk** %2, align 8
  %153 = load i32, i32* @SD_LBP_DISABLE, align 4
  %154 = call i32 @sd_config_discard(%struct.scsi_disk* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %147
  br label %156

156:                                              ; preds = %155, %138
  br label %157

157:                                              ; preds = %156, %129
  br label %158

158:                                              ; preds = %157, %118
  br label %159

159:                                              ; preds = %158, %25
  br label %160

160:                                              ; preds = %159, %64, %24
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @kfree(i8* %161)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i64 @scsi_get_vpd_page(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @blk_queue_io_min(i32, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @blk_queue_io_opt(i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i64 @min_not_zero(i32, i32) #1

declare dso_local i32 @get_unaligned_be64(i8*) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
