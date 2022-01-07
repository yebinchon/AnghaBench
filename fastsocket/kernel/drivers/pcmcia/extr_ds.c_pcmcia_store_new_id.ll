; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_store_new_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_ds.c_pcmcia_store_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.pcmcia_dynid = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.pcmcia_driver = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"%hx %hx %hx %hhx %hhx %hhx %x %x %x %x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @pcmcia_store_new_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_store_new_id(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pcmcia_dynid*, align 8
  %9 = alloca %struct.pcmcia_driver*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %20 = call %struct.pcmcia_driver* @to_pcmcia_drv(%struct.device_driver* %19)
  store %struct.pcmcia_driver* %20, %struct.pcmcia_driver** %9, align 8
  %21 = bitcast [4 x i32]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 16, i1 false)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %27 = call i32 @sscanf(i8* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %10, i8** %11, i8** %12, i8** %13, i8** %14, i8** %15, i32* %23, i32* %24, i32* %25, i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 6
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %105

33:                                               ; preds = %3
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pcmcia_dynid* @kzalloc(i32 64, i32 %34)
  store %struct.pcmcia_dynid* %35, %struct.pcmcia_dynid** %8, align 8
  %36 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %37 = icmp ne %struct.pcmcia_dynid* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %105

41:                                               ; preds = %33
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %44 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 6
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %48 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %52 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %56 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %60 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %64 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %67 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %71 = call i32 @memcpy(i32 %69, i32* %70, i32 16)
  %72 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %73 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.pcmcia_dynid*, %struct.pcmcia_dynid** %8, align 8
  %77 = getelementptr inbounds %struct.pcmcia_dynid, %struct.pcmcia_dynid* %76, i32 0, i32 0
  %78 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %79 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @list_add_tail(i32* %77, i32* %80)
  %82 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %83 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %87 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %86, i32 0, i32 0
  %88 = call i64 @get_driver(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %41
  %91 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %92 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %91, i32 0, i32 0
  %93 = call i32 @driver_attach(i32* %92)
  store i32 %93, i32* %18, align 4
  %94 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %9, align 8
  %95 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %94, i32 0, i32 0
  %96 = call i32 @put_driver(i32* %95)
  br label %97

97:                                               ; preds = %90, %41
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %4, align 4
  br label %105

102:                                              ; preds = %97
  %103 = load i64, i64* %7, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %100, %38, %30
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.pcmcia_driver* @to_pcmcia_drv(%struct.device_driver*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i8**, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.pcmcia_dynid* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @get_driver(i32*) #1

declare dso_local i32 @driver_attach(i32*) #1

declare dso_local i32 @put_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
