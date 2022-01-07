; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_state_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_attr.c_lpfc_link_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LINK_DISABLED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Link Down - User disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Link Up - \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Configuring Link\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Discovery\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Ready\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@LPFC_MENLO_MAINT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"   Menlo Maint Mode\0A\00", align 1
@LPFC_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"   Public Loop\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"   Private Loop\0A\00", align 1
@FC_FABRIC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"   Fabric\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"   Point-2-Point\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @lpfc_link_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_link_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %7, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %8, align 8
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %18 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %17, i32 0, i32 2
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %18, align 8
  store %struct.lpfc_hba* %19, %struct.lpfc_hba** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %209 [
    i32 136, label %23
    i32 128, label %23
    i32 138, label %23
    i32 139, label %23
    i32 137, label %23
    i32 141, label %23
    i32 135, label %53
    i32 146, label %53
    i32 140, label %53
  ]

23:                                               ; preds = %3, %3, %3, %3, %3, %3
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LINK_DISABLED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  %38 = call i32 @snprintf(i8* %34, i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %52

41:                                               ; preds = %23
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %46, %47
  %49 = call i32 @snprintf(i8* %45, i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %41, %30
  br label %209

53:                                               ; preds = %3, %3, %3
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @snprintf(i8* %57, i32 %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %65 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %122 [
    i32 134, label %67
    i32 143, label %78
    i32 142, label %78
    i32 144, label %78
    i32 132, label %78
    i32 133, label %78
    i32 147, label %78
    i32 145, label %78
    i32 130, label %89
    i32 131, label %100
    i32 129, label %111
  ]

67:                                               ; preds = %53
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = call i32 @snprintf(i8* %71, i32 %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %122

78:                                               ; preds = %53, %53, %53, %53, %53, %53, %53
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = call i32 @snprintf(i8* %82, i32 %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %122

89:                                               ; preds = %53
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @snprintf(i8* %93, i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %122

100:                                              ; preds = %53
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @snprintf(i8* %104, i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %10, align 4
  br label %122

111:                                              ; preds = %53
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  %119 = call i32 @snprintf(i8* %115, i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %53, %111, %100, %89, %78, %67
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @LPFC_MENLO_MAINT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %122
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @snprintf(i8* %134, i32 %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %208

141:                                              ; preds = %122
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @LPFC_TOPOLOGY_LOOP, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %141
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %149 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %147
  %155 = load i8*, i8** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i32, i32* @PAGE_SIZE, align 4
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 %159, %160
  %162 = call i32 @snprintf(i8* %158, i32 %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %10, align 4
  br label %176

165:                                              ; preds = %147
  %166 = load i8*, i8** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @snprintf(i8* %169, i32 %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %165, %154
  br label %207

177:                                              ; preds = %141
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %179 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FC_FABRIC, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* @PAGE_SIZE, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %189, %190
  %192 = call i32 @snprintf(i8* %188, i32 %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %10, align 4
  br label %206

195:                                              ; preds = %177
  %196 = load i8*, i8** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %200, %201
  %203 = call i32 @snprintf(i8* %199, i32 %202, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %195, %184
  br label %207

207:                                              ; preds = %206, %176
  br label %208

208:                                              ; preds = %207, %130
  br label %209

209:                                              ; preds = %208, %3, %52
  %210 = load i32, i32* %10, align 4
  ret i32 %210
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
