; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_check_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dcssblk.c_dcssblk_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcssblk_dev_info = type { i32 }

@DCSSBLK_PARM_LEN = common dso_local global i32 0, align 4
@dcssblk_segments = common dso_local global i8* null, align 8
@dcssblk_root_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"(local)\00", align 1
@dcssblk_devices_sem = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dcssblk_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcssblk_check_params() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dcssblk_dev_info*, align 8
  %8 = load i32, i32* @DCSSBLK_PARM_LEN, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %2, align 4
  br label %13

13:                                               ; preds = %178, %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @DCSSBLK_PARM_LEN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i8*, i8** @dcssblk_segments, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %17, %13
  %26 = phi i1 [ false, %13 ], [ %24, %17 ]
  br i1 %26, label %27, label %181

27:                                               ; preds = %25
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %70, %27
  %30 = load i8*, i8** @dcssblk_segments, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 44
  br i1 %36, label %37, label %57

37:                                               ; preds = %29
  %38 = load i8*, i8** @dcssblk_segments, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load i8*, i8** @dcssblk_segments, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 40
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @DCSSBLK_PARM_LEN, align 4
  %56 = icmp slt i32 %54, %55
  br label %57

57:                                               ; preds = %53, %45, %37, %29
  %58 = phi i1 [ false, %45 ], [ false, %37 ], [ false, %29 ], [ %56, %53 ]
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = load i8*, i8** @dcssblk_segments, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %2, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %12, i64 %68
  store i8 %64, i8* %69, align 1
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %29

73:                                               ; preds = %57
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %2, align 4
  %76 = sub nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %12, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i32, i32* @dcssblk_root_dev, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %2, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @dcssblk_add_store(i32 %79, i32* null, i8* %12, i32 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %145

86:                                               ; preds = %73
  %87 = load i8*, i8** @dcssblk_segments, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 40
  br i1 %93, label %94, label %145

94:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %12, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 58
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %12, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %102, %95
  %110 = phi i1 [ false, %95 ], [ %108, %102 ]
  br i1 %110, label %111, label %123

111:                                              ; preds = %109
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %12, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call signext i8 @toupper(i8 signext %115)
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %12, i64 %118
  store i8 %116, i8* %119, align 1
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %95

123:                                              ; preds = %109
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %12, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** @dcssblk_segments, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 @strncmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %123
  %134 = call i32 @down_read(i32* @dcssblk_devices_sem)
  %135 = call %struct.dcssblk_dev_info* @dcssblk_get_device_by_name(i8* %12)
  store %struct.dcssblk_dev_info* %135, %struct.dcssblk_dev_info** %7, align 8
  %136 = call i32 @up_read(i32* @dcssblk_devices_sem)
  %137 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %7, align 8
  %138 = icmp ne %struct.dcssblk_dev_info* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load %struct.dcssblk_dev_info*, %struct.dcssblk_dev_info** %7, align 8
  %141 = getelementptr inbounds %struct.dcssblk_dev_info, %struct.dcssblk_dev_info* %140, i32 0, i32 0
  %142 = call i32 @dcssblk_shared_store(i32* %141, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %143

143:                                              ; preds = %139, %133
  br label %144

144:                                              ; preds = %143, %123
  br label %145

145:                                              ; preds = %144, %86, %73
  br label %146

146:                                              ; preds = %164, %145
  %147 = load i8*, i8** @dcssblk_segments, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 44
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load i8*, i8** @dcssblk_segments, align 8
  %156 = load i32, i32* %3, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %154, %146
  %163 = phi i1 [ false, %146 ], [ %161, %154 ]
  br i1 %163, label %164, label %167

164:                                              ; preds = %162
  %165 = load i32, i32* %3, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %3, align 4
  br label %146

167:                                              ; preds = %162
  %168 = load i8*, i8** @dcssblk_segments, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %181

176:                                              ; preds = %167
  %177 = load i32, i32* %3, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %2, align 4
  br label %13

181:                                              ; preds = %175, %25
  %182 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %182)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dcssblk_add_store(i32, i32*, i8*, i32) #2

declare dso_local signext i8 @toupper(i8 signext) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local %struct.dcssblk_dev_info* @dcssblk_get_device_by_name(i8*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @dcssblk_shared_store(i32*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
