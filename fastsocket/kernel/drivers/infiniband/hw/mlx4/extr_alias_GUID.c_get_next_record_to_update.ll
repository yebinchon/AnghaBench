; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_get_next_record_to_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_alias_GUID.c_get_next_record_to_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.mlx4_next_alias_guid_work = type { i64, i32, i32 }

@NUM_ALIAS_GUID_REC_IN_PORT = common dso_local global i32 0, align 4
@MLX4_GUID_INFO_STATUS_IDLE = common dso_local global i64 0, align 8
@MLX4_GUID_INFO_STATUS_PENDING = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i64, %struct.mlx4_next_alias_guid_work*)* @get_next_record_to_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_record_to_update(%struct.mlx4_ib_dev* %0, i64 %1, %struct.mlx4_next_alias_guid_work* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlx4_next_alias_guid_work*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mlx4_next_alias_guid_work* %2, %struct.mlx4_next_alias_guid_work** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %86, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @NUM_ALIAS_GUID_REC_IN_PORT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %89

14:                                               ; preds = %10
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLX4_GUID_INFO_STATUS_IDLE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %79

37:                                               ; preds = %14
  %38 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %7, align 8
  %39 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %38, i32 0, i32 2
  %40 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %50
  %52 = call i32 @memcpy(i32* %39, %struct.TYPE_8__* %51, i32 4)
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %7, align 8
  %55 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.mlx4_next_alias_guid_work*, %struct.mlx4_next_alias_guid_work** %7, align 8
  %58 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, %struct.mlx4_next_alias_guid_work* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* @MLX4_GUID_INFO_STATUS_PENDING, align 8
  %60 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %59, i64* %72, align 8
  %73 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  store i32 0, i32* %4, align 4
  br label %92

79:                                               ; preds = %14
  %80 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %10

89:                                               ; preds = %10
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %37
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
