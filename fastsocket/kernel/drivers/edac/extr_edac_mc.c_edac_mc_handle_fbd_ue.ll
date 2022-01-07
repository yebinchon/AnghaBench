; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_handle_fbd_ue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_handle_fbd_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8* }

@EDAC_MC_LABEL_LEN = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"INTERNAL ERROR: row out of range (%d >= %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"INTERNAL ERROR\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"INTERNAL ERROR: channel-a out of range (%d >= %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"INTERNAL ERROR: channel-b out of range (%d >= %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@KERN_EMERG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"UE row %d, channel-a= %d channel-b= %d labels \22%s\22: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @edac_mc_handle_fbd_ue(%struct.mem_ctl_info* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i32, i32* @EDAC_MC_LABEL_LEN, align 4
  %18 = mul nsw i32 %17, 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  store i8* %23, i8** %14, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %26 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp uge i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %5
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %34 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (%struct.mem_ctl_info*, i32, i8*, i32, i32, ...) @edac_mc_printk(%struct.mem_ctl_info* %30, i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %38 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %166

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp uge i32 %40, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %39
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %55 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.mem_ctl_info*, i32, i8*, i32, i32, ...) @edac_mc_printk(%struct.mem_ctl_info* %51, i32 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %61)
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %64 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %166

65:                                               ; preds = %39
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %68 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp uge i32 %66, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %65
  %77 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %81 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.mem_ctl_info*, i32, i8*, i32, i32, ...) @edac_mc_printk(%struct.mem_ctl_info* %77, i32 %78, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %79, i32 %87)
  %89 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %90 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %166

91:                                               ; preds = %65
  %92 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %93 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %97 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %109 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @snprintf(i8* %105, i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %11, align 4
  %124 = sub nsw i32 %123, %122
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %14, align 8
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  %132 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %133 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @snprintf(i8* %129, i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %144)
  store i32 %145, i32* %15, align 4
  %146 = call i64 (...) @edac_mc_get_log_ue()
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %91
  %149 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %150 = load i32, i32* @KERN_EMERG, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 (%struct.mem_ctl_info*, i32, i8*, i32, i32, ...) @edac_mc_printk(%struct.mem_ctl_info* %149, i32 %150, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %152, i32 %153, i8* %23, i8* %154)
  br label %156

156:                                              ; preds = %148, %91
  %157 = call i64 (...) @edac_mc_get_panic_on_ue()
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i8* %23, i8* %163)
  br label %165

165:                                              ; preds = %159, %156
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %165, %76, %50, %29
  %167 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %16, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32, i32, ...) #2

declare dso_local i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @edac_mc_get_log_ue(...) #2

declare dso_local i64 @edac_mc_get_panic_on_ue(...) #2

declare dso_local i32 @panic(i8*, i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
