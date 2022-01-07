; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_retrieve_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_retrieve_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.dm_ioctl = type { i32, i32, i64, i32 }
%struct.dm_target_spec = type { i32, i32, i32, i32, i64 }
%struct.dm_target = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*, i32, i8*, i64)*, i64 (%struct.dm_target*, i32, i32, i8*, i64)*, i32 }

@DM_STATUS_TABLE_FLAG = common dso_local global i32 0, align 4
@STATUSTYPE_TABLE = common dso_local global i32 0, align 4
@STATUSTYPE_INFO = common dso_local global i32 0, align 4
@DM_BUFFER_FULL_FLAG = common dso_local global i32 0, align 4
@DM_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@DM_STATUS_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*, %struct.dm_ioctl*, i64)* @retrieve_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retrieve_status(%struct.dm_table* %0, %struct.dm_ioctl* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.dm_ioctl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_target_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dm_target*, align 8
  %18 = alloca i64, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.dm_ioctl* %1, %struct.dm_ioctl** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i8* @get_result_buffer(%struct.dm_ioctl* %19, i64 %20, i64* %14)
  store i8* %21, i8** %10, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %23 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DM_STATUS_TABLE_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @STATUSTYPE_TABLE, align 4
  store i32 %29, i32* %12, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @STATUSTYPE_INFO, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %34 = call i32 @dm_table_get_num_targets(%struct.dm_table* %33)
  store i32 %34, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %211, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %214

39:                                               ; preds = %35
  %40 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %40, i32 %41)
  store %struct.dm_target* %42, %struct.dm_target** %17, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub i64 %43, %48
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ule i64 %50, 24
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %54 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %55 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %214

58:                                               ; preds = %39
  %59 = load i8*, i8** %11, align 8
  %60 = bitcast i8* %59 to %struct.dm_target_spec*
  store %struct.dm_target_spec* %60, %struct.dm_target_spec** %9, align 8
  %61 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %62 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %67 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %69 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %72 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %74 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %77 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @strncpy(i32 %75, i32 %80, i32 4)
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 24
  store i8* %83, i8** %11, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sub i64 %84, %89
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ule i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %58
  %94 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %95 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %96 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %214

99:                                               ; preds = %58
  %100 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %101 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = call i64 @dm_target_provides_status_with_flags(%struct.TYPE_2__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %99
  %106 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %107 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64 (%struct.dm_target*, i32, i32, i8*, i64)*, i64 (%struct.dm_target*, i32, i32, i8*, i64)** %109, align 8
  %111 = icmp ne i64 (%struct.dm_target*, i32, i32, i8*, i64)* %110, null
  br i1 %111, label %112, label %143

112:                                              ; preds = %105
  %113 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %114 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DM_NOFLUSH_FLAG, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i32, i32* @DM_STATUS_NOFLUSH_FLAG, align 4
  %121 = load i32, i32* %16, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %125 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %124, i32 0, i32 0
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i64 (%struct.dm_target*, i32, i32, i8*, i64)*, i64 (%struct.dm_target*, i32, i32, i8*, i64)** %127, align 8
  %129 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = load i64, i64* %13, align 8
  %134 = call i64 %128(%struct.dm_target* %129, i32 %130, i32 %131, i8* %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %123
  %137 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %138 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %139 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %214

142:                                              ; preds = %123
  br label %173

143:                                              ; preds = %105, %99
  %144 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %145 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64 (%struct.dm_target*, i32, i8*, i64)*, i64 (%struct.dm_target*, i32, i8*, i64)** %147, align 8
  %149 = icmp ne i64 (%struct.dm_target*, i32, i8*, i64)* %148, null
  br i1 %149, label %150, label %169

150:                                              ; preds = %143
  %151 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %152 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64 (%struct.dm_target*, i32, i8*, i64)*, i64 (%struct.dm_target*, i32, i8*, i64)** %154, align 8
  %156 = load %struct.dm_target*, %struct.dm_target** %17, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load i8*, i8** %11, align 8
  %159 = load i64, i64* %13, align 8
  %160 = call i64 %155(%struct.dm_target* %156, i32 %157, i8* %158, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %150
  %163 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %164 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %165 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %214

168:                                              ; preds = %150
  br label %172

169:                                              ; preds = %143
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  store i8 0, i8* %171, align 1
  br label %172

172:                                              ; preds = %169, %168
  br label %173

173:                                              ; preds = %172, %142
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @strlen(i8* %174)
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %18, align 8
  %178 = load i64, i64* %18, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %173
  %182 = load i32, i32* @DM_BUFFER_FULL_FLAG, align 4
  %183 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %184 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 8
  br label %214

187:                                              ; preds = %173
  %188 = load i64, i64* %18, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 %188
  store i8* %190, i8** %11, align 8
  %191 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %192 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = add nsw i64 %194, %199
  store i64 %200, i64* %15, align 8
  %201 = load i8*, i8** %11, align 8
  %202 = call i8* @align_ptr(i8* %201)
  store i8* %202, i8** %11, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  %209 = load %struct.dm_target_spec*, %struct.dm_target_spec** %9, align 8
  %210 = getelementptr inbounds %struct.dm_target_spec, %struct.dm_target_spec* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %187
  %212 = load i32, i32* %7, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %35

214:                                              ; preds = %181, %162, %136, %93, %52, %35
  %215 = load i64, i64* %15, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i64, i64* %15, align 8
  %219 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %220 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.dm_ioctl*, %struct.dm_ioctl** %5, align 8
  %224 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 8
  ret void
}

declare dso_local i8* @get_result_buffer(%struct.dm_ioctl*, i64, i64*) #1

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i64 @dm_target_provides_status_with_flags(%struct.TYPE_2__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @align_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
