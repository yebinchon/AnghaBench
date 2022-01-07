; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_rss_config_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_rss_config_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rss_config_obj = type { i32, i32, i32 }

@bnx2x_setup_rss = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_rss_config_obj(%struct.bnx2x* %0, %struct.bnx2x_rss_config_obj* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i64* %9, i32 %10) #0 {
  %12 = alloca %struct.bnx2x*, align 8
  %13 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %12, align 8
  store %struct.bnx2x_rss_config_obj* %1, %struct.bnx2x_rss_config_obj** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i64* %9, i64** %21, align 8
  store i32 %10, i32* %22, align 4
  %23 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %13, align 8
  %24 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %23, i32 0, i32 2
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i8*, i8** %18, align 8
  %29 = load i32, i32* %19, align 4
  %30 = load i32, i32* %20, align 4
  %31 = load i64*, i64** %21, align 8
  %32 = load i32, i32* %22, align 4
  %33 = call i32 @bnx2x_init_raw_obj(i32* %24, i32 %25, i32 %26, i32 %27, i8* %28, i32 %29, i32 %30, i64* %31, i32 %32)
  %34 = load i32, i32* %17, align 4
  %35 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %13, align 8
  %36 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @bnx2x_setup_rss, align 4
  %38 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %13, align 8
  %39 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @bnx2x_init_raw_obj(i32*, i32, i32, i32, i8*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
