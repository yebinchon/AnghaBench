; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_map_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_map_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_buffer = type { i32, i32, i32 }
%struct.request = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_buffer*, %struct.request*)* @bsg_map_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_map_buffer(%struct.bsg_buffer* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bsg_buffer*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i64, align 8
  store %struct.bsg_buffer* %0, %struct.bsg_buffer** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %7 = load %struct.request*, %struct.request** %5, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @kzalloc(i64 %19, i32 %20)
  %22 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %2
  %32 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sg_init_table(i32 %34, i32 %37)
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.request*, %struct.request** %5, align 8
  %43 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @blk_rq_map_sg(i32 %41, %struct.request* %42, i32 %45)
  %47 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.request*, %struct.request** %5, align 8
  %50 = call i32 @blk_rq_bytes(%struct.request* %49)
  %51 = load %struct.bsg_buffer*, %struct.bsg_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.bsg_buffer, %struct.bsg_buffer* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %31, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
