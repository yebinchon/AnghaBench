; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_qdio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_hba_qdio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_hba_record }
%struct.zfcp_dbf_hba_record = type { i32, i32, i32, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.zfcp_dbf_dump = type { i32, i32, i32, i32, i64, %struct.TYPE_4__ }

@.str = private unnamed_addr constant [5 x i8] c"qdio\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"dump\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_hba_qdio(%struct.zfcp_dbf* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6) #0 {
  %8 = alloca %struct.zfcp_dbf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca %struct.zfcp_dbf_hba_record*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.zfcp_dbf_dump*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.zfcp_dbf* %0, %struct.zfcp_dbf** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8** %6, i8*** %14, align 8
  %27 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %28 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %27, i32 0, i32 2
  store %struct.zfcp_dbf_hba_record* %28, %struct.zfcp_dbf_hba_record** %15, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %29, i32 0, i32 0
  %31 = load i64, i64* %16, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %34 = call i32 @memset(%struct.zfcp_dbf_hba_record* %33, i32 0, i32 48)
  %35 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %36 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %39 = call i32 @strncpy(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %42 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %47 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %52 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %50, i32* %54, align 8
  %55 = load i8**, i8*** %14, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %7
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %65 = getelementptr inbounds %struct.zfcp_dbf_hba_record, %struct.zfcp_dbf_hba_record* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %7
  %69 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %74 = call i32 @debug_event(i32 %71, i32 %72, %struct.zfcp_dbf_hba_record* %73, i32 48)
  %75 = load i8**, i8*** %14, align 8
  %76 = icmp ne i8** %75, null
  br i1 %76, label %77, label %211

77:                                               ; preds = %68
  %78 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %79 = bitcast %struct.zfcp_dbf_hba_record* %78 to %struct.zfcp_dbf_dump*
  store %struct.zfcp_dbf_dump* %79, %struct.zfcp_dbf_dump** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 4, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %80 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %81 = call i32 @memset(%struct.zfcp_dbf_hba_record* %80, i32 0, i32 48)
  %82 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %83 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %86 = call i32 @strncpy(i32 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %92 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %25, align 4
  %94 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %95 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %209, %77
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @min(i32 %97, i32 %98)
  store i32 %99, i32* %24, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %96
  %104 = load i8**, i8*** %14, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %131, label %110

110:                                              ; preds = %103, %96
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %110
  %114 = load i32, i32* %26, align 4
  %115 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %116 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %118 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %122 = bitcast %struct.zfcp_dbf_dump* %121 to %struct.zfcp_dbf_hba_record*
  %123 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %124 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 48
  %128 = trunc i64 %127 to i32
  %129 = call i32 @debug_event(i32 %119, i32 %120, %struct.zfcp_dbf_hba_record* %122, i32 %128)
  br label %130

130:                                              ; preds = %113, %110
  br label %210

131:                                              ; preds = %103
  %132 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %133 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %21, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load i8**, i8*** %14, align 8
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %20, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr i8, i8* %142, i64 %144
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @memcpy(i64 %137, i8* %145, i32 %146)
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %24, align 4
  %152 = load i32, i32* %22, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %21, align 4
  %157 = load i32, i32* %24, align 4
  %158 = load i32, i32* %23, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %26, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %22, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %131
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 4, i32* %22, align 4
  br label %168

168:                                              ; preds = %165, %131
  %169 = load i32, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %209, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %26, align 4
  %173 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %174 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %176 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %180 = bitcast %struct.zfcp_dbf_dump* %179 to %struct.zfcp_dbf_hba_record*
  %181 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %182 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, 48
  %186 = trunc i64 %185 to i32
  %187 = call i32 @debug_event(i32 %177, i32 %178, %struct.zfcp_dbf_hba_record* %180, i32 %186)
  %188 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %189 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %25, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %193 = load %struct.zfcp_dbf_hba_record*, %struct.zfcp_dbf_hba_record** %15, align 8
  %194 = call i32 @memset(%struct.zfcp_dbf_hba_record* %193, i32 0, i32 48)
  %195 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %196 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %199 = call i32 @strncpy(i32 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = mul i64 %201, 4
  %203 = trunc i64 %202 to i32
  %204 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %205 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %25, align 4
  %207 = load %struct.zfcp_dbf_dump*, %struct.zfcp_dbf_dump** %18, align 8
  %208 = getelementptr inbounds %struct.zfcp_dbf_dump, %struct.zfcp_dbf_dump* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %171, %168
  br label %96

210:                                              ; preds = %130
  br label %211

211:                                              ; preds = %210, %68
  %212 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %8, align 8
  %213 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %212, i32 0, i32 0
  %214 = load i64, i64* %16, align 8
  %215 = call i32 @spin_unlock_irqrestore(i32* %213, i64 %214)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_hba_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_hba_record*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
