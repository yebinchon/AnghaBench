; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_convert_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-crypt.c_crypt_convert_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i64 }
%struct.convert_context = type { i32, i64, i32, i32, i64, i64, %struct.bio*, %struct.bio* }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypt_config*, %struct.convert_context*, %struct.bio*, %struct.bio*, i64)* @crypt_convert_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_convert_init(%struct.crypt_config* %0, %struct.convert_context* %1, %struct.bio* %2, %struct.bio* %3, i64 %4) #0 {
  %6 = alloca %struct.crypt_config*, align 8
  %7 = alloca %struct.convert_context*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i64, align 8
  store %struct.crypt_config* %0, %struct.crypt_config** %6, align 8
  store %struct.convert_context* %1, %struct.convert_context** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store %struct.bio* %3, %struct.bio** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.bio*, %struct.bio** %9, align 8
  %12 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %13 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %12, i32 0, i32 7
  store %struct.bio* %11, %struct.bio** %13, align 8
  %14 = load %struct.bio*, %struct.bio** %8, align 8
  %15 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %16 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %15, i32 0, i32 6
  store %struct.bio* %14, %struct.bio** %16, align 8
  %17 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %18 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %20 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.bio*, %struct.bio** %9, align 8
  %22 = icmp ne %struct.bio* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.bio*, %struct.bio** %9, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %31 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bio*, %struct.bio** %8, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.bio*, %struct.bio** %8, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %42 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.crypt_config*, %struct.crypt_config** %6, align 8
  %45 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %49 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.convert_context*, %struct.convert_context** %7, align 8
  %51 = getelementptr inbounds %struct.convert_context, %struct.convert_context* %50, i32 0, i32 0
  %52 = call i32 @init_completion(i32* %51)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
