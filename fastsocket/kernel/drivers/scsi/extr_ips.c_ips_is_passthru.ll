; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_is_passthru.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_is_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ips_is_passthru\00", align 1
@IPS_IOCTL_COMMAND = common dso_local global i64 0, align 8
@IPS_ADAPTER_ID = common dso_local global i64 0, align 8
@KM_IRQ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ips_is_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_is_passthru(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i8*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1)
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = icmp ne %struct.scsi_cmnd* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

11:                                               ; preds = %1
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPS_IOCTL_COMMAND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %11
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %109

26:                                               ; preds = %19
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IPS_ADAPTER_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %109

34:                                               ; preds = %26
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %109

41:                                               ; preds = %34
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %42)
  %44 = icmp ne %struct.scatterlist* %43, null
  br i1 %44, label %45, label %109

45:                                               ; preds = %41
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %47 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %46)
  store %struct.scatterlist* %47, %struct.scatterlist** %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @local_irq_save(i64 %48)
  %50 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %51 = call i32 @sg_page(%struct.scatterlist* %50)
  %52 = load i32, i32* @KM_IRQ0, align 4
  %53 = call i8* @kmap_atomic(i32 %51, i32 %52)
  %54 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %97

61:                                               ; preds = %45
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 67
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 79
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 80
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 80
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i8, i8* %86, i64 %91
  %93 = load i32, i32* @KM_IRQ0, align 4
  %94 = call i32 @kunmap_atomic(i8* %92, i32 %93)
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @local_irq_restore(i64 %95)
  store i32 1, i32* %2, align 4
  br label %110

97:                                               ; preds = %79, %73, %67, %61, %45
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %100 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = load i32, i32* @KM_IRQ0, align 4
  %106 = call i32 @kunmap_atomic(i8* %104, i32 %105)
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @local_irq_restore(i64 %107)
  br label %109

109:                                              ; preds = %97, %41, %34, %26, %19, %11
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %85, %10
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
