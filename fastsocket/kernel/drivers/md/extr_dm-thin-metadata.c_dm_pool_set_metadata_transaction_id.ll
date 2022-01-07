; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_set_metadata_transaction_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_set_metadata_transaction_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mismatched transaction id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_set_metadata_transaction_id(%struct.dm_pool_metadata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %11 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %10, i32 0, i32 1
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %20 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %30

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %29 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %24, %17
  %31 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %32 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %31, i32 0, i32 1
  %33 = call i32 @up_write(i32* %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
