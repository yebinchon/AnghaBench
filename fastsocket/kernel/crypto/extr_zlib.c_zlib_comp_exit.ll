; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_comp_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_zlib.c_zlib_comp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib_ctx = type { %struct.z_stream_s }
%struct.z_stream_s = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zlib_ctx*)* @zlib_comp_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlib_comp_exit(%struct.zlib_ctx* %0) #0 {
  %2 = alloca %struct.zlib_ctx*, align 8
  %3 = alloca %struct.z_stream_s*, align 8
  store %struct.zlib_ctx* %0, %struct.zlib_ctx** %2, align 8
  %4 = load %struct.zlib_ctx*, %struct.zlib_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.zlib_ctx, %struct.zlib_ctx* %4, i32 0, i32 0
  store %struct.z_stream_s* %5, %struct.z_stream_s** %3, align 8
  %6 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %7 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %12 = call i32 @zlib_deflateEnd(%struct.z_stream_s* %11)
  %13 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @vfree(i32* %15)
  %17 = load %struct.z_stream_s*, %struct.z_stream_s** %3, align 8
  %18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @zlib_deflateEnd(%struct.z_stream_s*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
