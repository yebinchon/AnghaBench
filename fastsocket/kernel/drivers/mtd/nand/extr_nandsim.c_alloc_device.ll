; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_alloc_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_alloc_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nandsim = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.file*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@cache_file = common dso_local global i64 0, align 8
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"alloc_device: cache file not readable\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"alloc_device: cache file not writeable\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"alloc_device: unable to allocate pages written array\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"alloc_device: unable to allocate file buf\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"alloc_device: unable to allocate page array\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nandsim\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"cache_create: unable to create kmem_cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*)* @alloc_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_device(%struct.nandsim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nandsim*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nandsim* %0, %struct.nandsim** %3, align 8
  %7 = load i64, i64* @cache_file, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %109

9:                                                ; preds = %1
  %10 = load i64, i64* @cache_file, align 8
  %11 = load i32, i32* @O_CREAT, align 4
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @O_LARGEFILE, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.file* @filp_open(i64 %10, i32 %15, i32 384)
  store %struct.file* %16, %struct.file** %4, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = call i64 @IS_ERR(%struct.file* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.file* %21)
  store i32 %22, i32* %2, align 4
  br label %174

23:                                               ; preds = %9
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %35, %23
  %43 = call i32 @NS_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %170

46:                                               ; preds = %35, %28
  %47 = load %struct.file*, %struct.file** %4, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = call i32 @NS_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %170

64:                                               ; preds = %53, %46
  %65 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %66 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @vmalloc(i32 %68)
  %70 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %71 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %73 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %64
  %77 = call i32 @NS_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %170

80:                                               ; preds = %64
  %81 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %82 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @kmalloc(i32 %84, i32 %85)
  %87 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %88 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %90 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %80
  %94 = call i32 @NS_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %165

97:                                               ; preds = %80
  %98 = load %struct.file*, %struct.file** %4, align 8
  %99 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %100 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %99, i32 0, i32 4
  store %struct.file* %98, %struct.file** %100, align 8
  %101 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %102 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %105 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @memset(i8* %103, i32 0, i32 %107)
  store i32 0, i32* %2, align 4
  br label %174

109:                                              ; preds = %1
  %110 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %111 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = call i8* @vmalloc(i32 %116)
  %118 = bitcast i8* %117 to %struct.TYPE_5__*
  %119 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %120 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %119, i32 0, i32 3
  store %struct.TYPE_5__* %118, %struct.TYPE_5__** %120, align 8
  %121 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %122 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %121, i32 0, i32 3
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = icmp ne %struct.TYPE_5__* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %109
  %126 = call i32 @NS_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %174

129:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %145, %129
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %133 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %139 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %138, i32 0, i32 3
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %130

148:                                              ; preds = %130
  %149 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %150 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 0, i32 0, i32* null)
  %154 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %155 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %157 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %148
  %161 = call i32 @NS_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %174

164:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %174

165:                                              ; preds = %93
  %166 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %167 = getelementptr inbounds %struct.nandsim, %struct.nandsim* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @vfree(i8* %168)
  br label %170

170:                                              ; preds = %165, %76, %60, %42
  %171 = load %struct.file*, %struct.file** %4, align 8
  %172 = call i32 @filp_close(%struct.file* %171, i32* null)
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %164, %160, %125, %97, %20
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.file* @filp_open(i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @NS_ERR(i8*) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @filp_close(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
