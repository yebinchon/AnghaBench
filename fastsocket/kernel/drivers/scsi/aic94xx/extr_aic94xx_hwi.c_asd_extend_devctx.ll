; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_devctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_extend_devctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@max_devs = common dso_local global i32 0, align 4
@ASD_DDB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"couldn't allocate memory for %d devices\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DEVCTXBASE = common dso_local global i32 0, align 4
@CTXDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_extend_devctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_extend_devctx(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %9 = call i32 @asd_extend_devctx_ocm(%struct.asd_ha_struct* %8)
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %11 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  %13 = load i32, i32* @max_devs, align 4
  %14 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %15 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %13, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @max_devs, align 4
  %21 = icmp sgt i32 %20, 65535
  br i1 %21, label %22, label %27

22:                                               ; preds = %19, %1
  %23 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %24 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* @max_devs, align 4
  store i32 0, i32* %2, align 4
  br label %95

27:                                               ; preds = %19
  %28 = load i32, i32* @max_devs, align 4
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %30 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %28, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @ASD_DDB_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.TYPE_4__* @asd_alloc_coherent(%struct.asd_ha_struct* %37, i32 %38, i32 %39)
  %41 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %42 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %45 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %27
  %50 = load i32, i32* @max_devs, align 4
  %51 = call i32 @asd_printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %53 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* @max_devs, align 4
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %95

58:                                               ; preds = %27
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %60 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i32, i32* @ASD_DDB_SIZE, align 4
  %67 = call i64 @ALIGN(i64 %65, i32 %66)
  store i64 %67, i64* %5, align 8
  %68 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %69 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ASD_DDB_SIZE, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %5, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %4, align 8
  %78 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %79 = load i32, i32* @DEVCTXBASE, align 4
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @asd_write_reg_addr(%struct.asd_ha_struct* %78, i32 %79, i64 %80)
  %82 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %83 = load i32, i32* @CTXDOMAIN, align 4
  %84 = call i32 @asd_read_reg_dword(%struct.asd_ha_struct* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %85, -5
  store i32 %86, i32* %6, align 4
  %87 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %88 = load i32, i32* @CTXDOMAIN, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @asd_write_reg_dword(%struct.asd_ha_struct* %87, i32 %88, i32 %89)
  %91 = load i32, i32* @max_devs, align 4
  %92 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %93 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %58, %49, %22
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @asd_extend_devctx_ocm(%struct.asd_ha_struct*) #1

declare dso_local %struct.TYPE_4__* @asd_alloc_coherent(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_printk(i8*, i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @asd_write_reg_addr(%struct.asd_ha_struct*, i32, i64) #1

declare dso_local i32 @asd_read_reg_dword(%struct.asd_ha_struct*, i32) #1

declare dso_local i32 @asd_write_reg_dword(%struct.asd_ha_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
