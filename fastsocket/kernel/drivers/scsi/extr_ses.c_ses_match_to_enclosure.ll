; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_match_to_enclosure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ses.c_ses_match_to_enclosure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { i32 }
%struct.efd = type { i32, i32* }

@INIT_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCSI_PROTOCOL_SAS = common dso_local global i32 0, align 4
@ses_enclosure_find_by_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enclosure_device*, %struct.scsi_device*)* @ses_match_to_enclosure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ses_match_to_enclosure(%struct.enclosure_device* %0, %struct.scsi_device* %1) #0 {
  %3 = alloca %struct.enclosure_device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %3, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %4, align 8
  %15 = bitcast %struct.efd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @INIT_ALLOC_SIZE, align 4
  %25 = call i64 @scsi_get_vpd_page(%struct.scsi_device* %22, i32 131, i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %185

28:                                               ; preds = %21
  %29 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %30 = load %struct.enclosure_device*, %struct.enclosure_device** %3, align 8
  %31 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @to_scsi_device(i32 %33)
  %35 = call i32 @ses_enclosure_data_process(%struct.enclosure_device* %29, i32 %34, i32 0)
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %40, %44
  %46 = add nsw i32 %45, 4
  store i32 %46, i32* %7, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kmalloc(i32 %49, i32 %50)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %28
  %55 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @scsi_get_vpd_page(%struct.scsi_device* %55, i32 131, i8* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %28
  br label %185

61:                                               ; preds = %54
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %168, %61
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = icmp ult i8* %65, %69
  br i1 %70, label %71, label %174

71:                                               ; preds = %64
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = ashr i32 %75, 4
  store i32 %76, i32* %9, align 4
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 15
  store i32 %81, i32* %10, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 128
  store i32 %86, i32* %11, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 48
  %92 = ashr i32 %91, 4
  store i32 %92, i32* %12, align 4
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 15
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 3
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %168

104:                                              ; preds = %71
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %168

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %168

110:                                              ; preds = %107
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @SCSI_PROTOCOL_SAS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %168

114:                                              ; preds = %110
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %168

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %168

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 56
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 5
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 48
  %131 = or i32 %125, %130
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 6
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl i32 %135, 40
  %137 = or i32 %131, %136
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 7
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 32
  %143 = or i32 %137, %142
  %144 = load i8*, i8** %6, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 8
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 24
  %149 = or i32 %143, %148
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 9
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = shl i32 %153, 16
  %155 = or i32 %149, %154
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 10
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 8
  %161 = or i32 %155, %160
  %162 = load i8*, i8** %6, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 11
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %161, %165
  %167 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  br label %168

168:                                              ; preds = %120, %117, %114, %110, %107, %104, %71
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 4
  %171 = load i8*, i8** %6, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %6, align 8
  br label %64

174:                                              ; preds = %64
  %175 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %174
  br label %185

179:                                              ; preds = %174
  %180 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %181 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.efd, %struct.efd* %8, i32 0, i32 1
  store i32* %181, i32** %182, align 8
  %183 = load i32, i32* @ses_enclosure_find_by_addr, align 4
  %184 = call i32 @enclosure_for_each_device(i32 %183, %struct.efd* %8)
  br label %185

185:                                              ; preds = %179, %178, %60, %27
  %186 = load i8*, i8** %5, align 8
  %187 = call i32 @kfree(i8* %186)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i64 @scsi_get_vpd_page(%struct.scsi_device*, i32, i8*, i32) #2

declare dso_local i32 @ses_enclosure_data_process(%struct.enclosure_device*, i32, i32) #2

declare dso_local i32 @to_scsi_device(i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @enclosure_for_each_device(i32, %struct.efd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
