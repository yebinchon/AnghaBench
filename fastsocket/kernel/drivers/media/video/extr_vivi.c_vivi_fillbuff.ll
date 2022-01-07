; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_fillbuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vivi_fillbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivi_fh = type { %struct.vivi_dev* }
%struct.vivi_dev = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.vivi_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.timeval, i32 }
%struct.timeval = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%02d:%02d:%02d:%03d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"vivifill at %s: Buffer 0x%08lx size= %d\0A\00", align 1
@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivi_fh*, %struct.vivi_buffer*)* @vivi_fillbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivi_fillbuff(%struct.vivi_fh* %0, %struct.vivi_buffer* %1) #0 {
  %3 = alloca %struct.vivi_fh*, align 8
  %4 = alloca %struct.vivi_buffer*, align 8
  %5 = alloca %struct.vivi_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.vivi_fh* %0, %struct.vivi_fh** %3, align 8
  store %struct.vivi_buffer* %1, %struct.vivi_buffer** %4, align 8
  %13 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %14 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %13, i32 0, i32 0
  %15 = load %struct.vivi_dev*, %struct.vivi_dev** %14, align 8
  store %struct.vivi_dev* %15, %struct.vivi_dev** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %24, i32 0, i32 0
  %26 = call i8* @videobuf_to_vmalloc(%struct.TYPE_2__* %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %184

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 2
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call i8* @kmalloc(i32 %32, i32 %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %184

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.vivi_fh*, %struct.vivi_fh** %3, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %50 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %53 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @gen_line(%struct.vivi_fh* %44, i8* %45, i32 0, i32 %46, i32 %47, i32 %48, i32 %51, i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr i8, i8* %56, i64 %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i32 @memcpy(i8* %59, i8* %60, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 2
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %73 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @kfree(i8* %76)
  %78 = load i64, i64* @jiffies, align 8
  %79 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %80 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = call i64 @jiffies_to_msecs(i64 %82)
  %84 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %85 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load i64, i64* @jiffies, align 8
  %91 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %92 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %91, i32 0, i32 5
  store i64 %90, i64* %92, align 8
  %93 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %94 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %95, 1000
  br i1 %96, label %97, label %144

97:                                               ; preds = %71
  %98 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %99 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1000
  store i32 %101, i32* %99, align 8
  %102 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %103 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %107 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %108, 60
  br i1 %109, label %110, label %143

110:                                              ; preds = %97
  %111 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %112 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 60
  store i32 %114, i32* %112, align 4
  %115 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %116 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %120 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 60
  br i1 %122, label %123, label %142

123:                                              ; preds = %110
  %124 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %125 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 60
  store i32 %127, i32* %125, align 8
  %128 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %129 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %133 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 24
  br i1 %135, label %136, label %141

136:                                              ; preds = %123
  %137 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %138 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 24
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %123
  br label %142

142:                                              ; preds = %141, %110
  br label %143

143:                                              ; preds = %142, %97
  br label %144

144:                                              ; preds = %143, %71
  %145 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %146 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %149 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %152 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %155 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %158 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @sprintf(i32 %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %162 = load %struct.vivi_dev*, %struct.vivi_dev** %5, align 8
  %163 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @dprintk(%struct.vivi_dev* %161, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %164, i64 %166, i32 %167)
  %169 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %170 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = call i32 @do_gettimeofday(%struct.timeval* %10)
  %175 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %176 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  %178 = bitcast %struct.timeval* %177 to i8*
  %179 = bitcast %struct.timeval* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 4, i1 false)
  %180 = load i32, i32* @VIDEOBUF_DONE, align 4
  %181 = load %struct.vivi_buffer*, %struct.vivi_buffer** %4, align 8
  %182 = getelementptr inbounds %struct.vivi_buffer, %struct.vivi_buffer* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %144, %37, %29
  ret void
}

declare dso_local i8* @videobuf_to_vmalloc(%struct.TYPE_2__*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @gen_line(%struct.vivi_fh*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(%struct.vivi_dev*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
