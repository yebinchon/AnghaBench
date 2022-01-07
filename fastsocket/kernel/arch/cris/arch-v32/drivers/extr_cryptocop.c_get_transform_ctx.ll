; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_get_transform_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_get_transform_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_transform_ctx = type { %struct.cryptocop_transform_ctx*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.cryptocop_session = type { %struct.cryptocop_transform_ctx* }

@.str = private unnamed_addr constant [38 x i8] c"get_transform_ctx, sess=0x%p, tid=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"tc=0x%p, tc->next=0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"get_transform_ctx, returning tc=0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cryptocop_transform_ctx* (%struct.cryptocop_session*, i64)* @get_transform_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cryptocop_transform_ctx* @get_transform_ctx(%struct.cryptocop_session* %0, i64 %1) #0 {
  %3 = alloca %struct.cryptocop_session*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cryptocop_transform_ctx*, align 8
  store %struct.cryptocop_session* %0, %struct.cryptocop_session** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.cryptocop_session*, %struct.cryptocop_session** %3, align 8
  %7 = getelementptr inbounds %struct.cryptocop_session, %struct.cryptocop_session* %6, i32 0, i32 0
  %8 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %7, align 8
  store %struct.cryptocop_transform_ctx* %8, %struct.cryptocop_transform_ctx** %5, align 8
  %9 = load %struct.cryptocop_session*, %struct.cryptocop_session** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.cryptocop_session* %9, i64 %10)
  %12 = call i32 @DEBUG(i32 %11)
  %13 = load %struct.cryptocop_session*, %struct.cryptocop_session** %3, align 8
  %14 = icmp ne %struct.cryptocop_session* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  br label %17

17:                                               ; preds = %29, %2
  %18 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %19 = icmp ne %struct.cryptocop_transform_ctx* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.cryptocop_transform_ctx, %struct.cryptocop_transform_ctx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %20, %17
  %28 = phi i1 [ false, %17 ], [ %26, %20 ]
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %31 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.cryptocop_transform_ctx, %struct.cryptocop_transform_ctx* %31, i32 0, i32 0
  %33 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %32, align 8
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.cryptocop_transform_ctx* %30, %struct.cryptocop_transform_ctx* %33)
  %35 = call i32 @DEBUG(i32 %34)
  %36 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.cryptocop_transform_ctx, %struct.cryptocop_transform_ctx* %36, i32 0, i32 0
  %38 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %37, align 8
  store %struct.cryptocop_transform_ctx* %38, %struct.cryptocop_transform_ctx** %5, align 8
  br label %17

39:                                               ; preds = %27
  %40 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.cryptocop_transform_ctx* %40)
  %42 = call i32 @DEBUG(i32 %41)
  %43 = load %struct.cryptocop_transform_ctx*, %struct.cryptocop_transform_ctx** %5, align 8
  ret %struct.cryptocop_transform_ctx* %43
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
