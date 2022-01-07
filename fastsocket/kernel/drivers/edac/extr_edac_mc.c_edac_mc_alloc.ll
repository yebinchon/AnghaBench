; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_edac_mc.c_edac_mc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.mem_ctl_info*, %struct.mem_ctl_info*, %struct.mem_ctl_info*, i8*, %struct.mem_ctl_info* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.csrow_info*, %struct.csrow_info*, %struct.csrow_info*, i8*, %struct.csrow_info* }
%struct.channel_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.channel_info*, %struct.channel_info*, %struct.channel_info*, i8*, %struct.channel_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@OP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.csrow_info*, align 8
  %12 = alloca %struct.csrow_info*, align 8
  %13 = alloca %struct.channel_info*, align 8
  %14 = alloca %struct.channel_info*, align 8
  %15 = alloca %struct.channel_info*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %10, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i64 1
  %23 = call i8* @edac_align_ptr(%struct.mem_ctl_info* %22, i32 72)
  %24 = bitcast i8* %23 to %struct.csrow_info*
  store %struct.csrow_info* %24, %struct.csrow_info** %11, align 8
  %25 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %25, i64 %27
  %29 = bitcast %struct.csrow_info* %28 to %struct.mem_ctl_info*
  %30 = call i8* @edac_align_ptr(%struct.mem_ctl_info* %29, i32 72)
  %31 = bitcast i8* %30 to %struct.channel_info*
  store %struct.channel_info* %31, %struct.channel_info** %13, align 8
  %32 = load %struct.channel_info*, %struct.channel_info** %13, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %32, i64 %36
  %38 = bitcast %struct.channel_info* %37 to %struct.mem_ctl_info*
  %39 = load i32, i32* %6, align 4
  %40 = call i8* @edac_align_ptr(%struct.mem_ctl_info* %38, i32 %39)
  store i8* %40, i8** %16, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.mem_ctl_info* @kzalloc(i32 %47, i32 %48)
  store %struct.mem_ctl_info* %49, %struct.mem_ctl_info** %10, align 8
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %51 = icmp eq %struct.mem_ctl_info* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %4
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %5, align 8
  br label %158

53:                                               ; preds = %4
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %55 = bitcast %struct.mem_ctl_info* %54 to i8*
  %56 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %57 = ptrtoint %struct.csrow_info* %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = bitcast i8* %58 to %struct.csrow_info*
  store %struct.csrow_info* %59, %struct.csrow_info** %11, align 8
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %61 = bitcast %struct.mem_ctl_info* %60 to i8*
  %62 = load %struct.channel_info*, %struct.channel_info** %13, align 8
  %63 = ptrtoint %struct.channel_info* %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = bitcast i8* %64 to %struct.channel_info*
  store %struct.channel_info* %65, %struct.channel_info** %13, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %70 = bitcast %struct.mem_ctl_info* %69 to i8*
  %71 = load i8*, i8** %16, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  br label %75

74:                                               ; preds = %53
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi i8* [ %73, %68 ], [ null, %74 ]
  store i8* %76, i8** %16, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %79 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %81 = bitcast %struct.csrow_info* %80 to %struct.mem_ctl_info*
  %82 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %83 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %82, i32 0, i32 11
  store %struct.mem_ctl_info* %81, %struct.mem_ctl_info** %83, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %86 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %85, i32 0, i32 10
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %89 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %18, align 4
  br label %90

90:                                               ; preds = %139, %75
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.csrow_info*, %struct.csrow_info** %11, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %95, i64 %97
  store %struct.csrow_info* %98, %struct.csrow_info** %12, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %101 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %103 = bitcast %struct.mem_ctl_info* %102 to %struct.csrow_info*
  %104 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %105 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %104, i32 0, i32 9
  store %struct.csrow_info* %103, %struct.csrow_info** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %108 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.channel_info*, %struct.channel_info** %13, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %8, align 4
  %112 = mul i32 %110, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %109, i64 %113
  store %struct.channel_info* %114, %struct.channel_info** %14, align 8
  %115 = load %struct.channel_info*, %struct.channel_info** %14, align 8
  %116 = bitcast %struct.channel_info* %115 to %struct.csrow_info*
  %117 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %118 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %117, i32 0, i32 8
  store %struct.csrow_info* %116, %struct.csrow_info** %118, align 8
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %135, %94
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load %struct.channel_info*, %struct.channel_info** %14, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %124, i64 %126
  store %struct.channel_info* %127, %struct.channel_info** %15, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.channel_info*, %struct.channel_info** %15, align 8
  %130 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %132 = bitcast %struct.csrow_info* %131 to %struct.channel_info*
  %133 = load %struct.channel_info*, %struct.channel_info** %15, align 8
  %134 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %133, i32 0, i32 7
  store %struct.channel_info* %132, %struct.channel_info** %134, align 8
  br label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %119

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %90

142:                                              ; preds = %90
  %143 = load i32, i32* @OP_ALLOC, align 4
  %144 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %145 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  %146 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %147 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %146, i32 0, i32 5
  %148 = call i32 @INIT_LIST_HEAD(i32* %147)
  %149 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %150 = call i32 @edac_mc_register_sysfs_main_kobj(%struct.mem_ctl_info* %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %142
  %154 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %155 = call i32 @kfree(%struct.mem_ctl_info* %154)
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %5, align 8
  br label %158

156:                                              ; preds = %142
  %157 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  store %struct.mem_ctl_info* %157, %struct.mem_ctl_info** %5, align 8
  br label %158

158:                                              ; preds = %156, %153, %52
  %159 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  ret %struct.mem_ctl_info* %159
}

declare dso_local i8* @edac_align_ptr(%struct.mem_ctl_info*, i32) #1

declare dso_local %struct.mem_ctl_info* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @edac_mc_register_sysfs_main_kobj(%struct.mem_ctl_info*) #1

declare dso_local i32 @kfree(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
