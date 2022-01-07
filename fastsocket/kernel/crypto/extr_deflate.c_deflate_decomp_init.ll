; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_decomp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_deflate.c_deflate_decomp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFLATE_DEF_WINBITS = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.deflate_ctx*)* @deflate_decomp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deflate_decomp_init(%struct.deflate_ctx* %0) #0 {
  %2 = alloca %struct.deflate_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_stream_s*, align 8
  store %struct.deflate_ctx* %0, %struct.deflate_ctx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.deflate_ctx*, %struct.deflate_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %5, i32 0, i32 0
  store %struct.z_stream_s* %6, %struct.z_stream_s** %4, align 8
  %7 = call i32 (...) @zlib_inflate_workspacesize()
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kzalloc(i32 %7, i32 %8)
  %10 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %11 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %13 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %21 = load i32, i32* @DEFLATE_DEF_WINBITS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @zlib_inflateInit2(%struct.z_stream_s* %20, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @Z_OK, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %33, %30, %16
  %32 = load i32, i32* %3, align 4
  ret i32 %32

33:                                               ; preds = %27
  %34 = load %struct.z_stream_s*, %struct.z_stream_s** %4, align 8
  %35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kfree(i32 %36)
  br label %31
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @zlib_inflateInit2(%struct.z_stream_s*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
