; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_init_origin_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c_init_origin_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ORIGIN_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@_origins = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_origin_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_origin_hash() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @kmalloc(i32 %6, i32 %7)
  store i64 %8, i64* @_origins, align 8
  %9 = load i64, i64* @_origins, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = call i32 @DMERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %31

15:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @ORIGIN_HASH_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i64, i64* @_origins, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = call i32 @INIT_LIST_HEAD(i64 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %16

29:                                               ; preds = %16
  %30 = call i32 @init_rwsem(i32* @_origins_lock)
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @init_rwsem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
