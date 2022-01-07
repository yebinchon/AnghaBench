; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_scbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_init_scbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data, i32, %struct.TYPE_3__ }
%struct.asd_seq_data = type { i32, i32, i32, i64, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_init_scbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_init_scbs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca %struct.asd_seq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %6 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %7 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %6, i32 0, i32 0
  store %struct.asd_seq_data* %7, %struct.asd_seq_data** %4, align 8
  %8 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %9 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %13 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %26, i32 0, i32 4
  store i32* %24, i32** %27, align 8
  %28 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %29 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %115

36:                                               ; preds = %1
  %37 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %38 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 7
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 8
  %45 = call i32 @BITS_TO_LONGS(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %54 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %54, i32 0, i32 5
  store i32* %52, i32** %55, align 8
  %56 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %57 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %36
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %115

64:                                               ; preds = %36
  %65 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %66 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %65, i32 0, i32 7
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %69 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 4, i32* %70, align 8
  %71 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %72 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %76 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = call i32 @dma_pool_alloc(i32 %73, i32 %74, i32* %77)
  %79 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %80 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %83 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %64
  %88 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %89 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %94 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @kfree(i32* %96)
  %98 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %99 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %99, i32 0, i32 5
  store i32* null, i32** %100, align 8
  %101 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %102 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %102, i32 0, i32 4
  store i32* null, i32** %103, align 8
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %115

106:                                              ; preds = %64
  %107 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %108 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %110 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %109, i32 0, i32 2
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.asd_seq_data*, %struct.asd_seq_data** %4, align 8
  %113 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %112, i32 0, i32 1
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %106, %87, %61, %33
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
