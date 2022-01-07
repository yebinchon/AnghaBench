; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_write_big_buf_wb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_init_ops.h_bnx2x_write_big_buf_wb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_write_big_buf_wb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_write_big_buf_wb(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = call i32 @GUNZIP_PHYS(%struct.bnx2x* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @bnx2x_write_dmae_phys_len(%struct.bnx2x* %12, i32 %14, i32 %15, i32 %16)
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i64 @CHIP_IS_E1(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = call i32 @GUNZIP_BUF(%struct.bnx2x* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bnx2x_init_ind_wr(%struct.bnx2x* %23, i32 %24, i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %18
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = call i32 @GUNZIP_BUF(%struct.bnx2x* %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bnx2x_init_str_wr(%struct.bnx2x* %30, i32 %31, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @bnx2x_write_dmae_phys_len(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_PHYS(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_ind_wr(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @GUNZIP_BUF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_str_wr(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
