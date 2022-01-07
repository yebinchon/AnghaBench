; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_comp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_comp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DEFLATE_DEF_LEVEL = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@DEFLATE_DEF_WINBITS = common dso_local global i32 0, align 4
@DEFLATE_DEF_MEMLEVEL = common dso_local global i32 0, align 4
@Z_DEFAULT_STRATEGY = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.deflate_ctx*)* @deflate_comp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_comp_init(%struct.deflate_ctx* %0) #0 {
  %2 = alloca %struct.deflate_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.deflate_ctx* %0, %struct.deflate_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.deflate_ctx*, %struct.deflate_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %5, i32 0, i32 0
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8
  %7 = call i32 (...) @zlib_deflate_workspacesize()
  %8 = call i32 @vmalloc(i32 %7)
  %9 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %10 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %12 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %1
  %19 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %20 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (...) @zlib_deflate_workspacesize()
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  %24 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %25 = load i32, i32* @DEFLATE_DEF_LEVEL, align 4
  %26 = load i32, i32* @Z_DEFLATED, align 4
  %27 = load i32, i32* @DEFLATE_DEF_WINBITS, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32, i32* @DEFLATE_DEF_MEMLEVEL, align 4
  %30 = load i32, i32* @Z_DEFAULT_STRATEGY, align 4
  %31 = call i32 @zlib_deflateInit2(%struct.z_stream_s* %24, i32 %25, i32 %26, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @Z_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %41, %38, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40

41:                                               ; preds = %35
  %42 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vfree(i32 %44)
  br label %39
}

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @zlib_deflate_workspacesize(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @zlib_deflateInit2(%struct.z_stream_s*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
