; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_post_vf_bulletin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_post_vf_bulletin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.pf_vf_bulletin_content = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@BULLETIN_CONTENT_SIZE = common dso_local global i32 0, align 4
@bulletin_map = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@VF_ENABLED = common dso_local global i64 0, align 8
@VF_ACQUIRED = common dso_local global i64 0, align 8
@abs_vfid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_post_vf_bulletin(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pf_vf_bulletin_content*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %10, i32 %11)
  store %struct.pf_vf_bulletin_content* %12, %struct.pf_vf_bulletin_content** %6, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = call %struct.TYPE_2__* @BP_VF_BULLETIN_DMA(%struct.bnx2x* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @BULLETIN_CONTENT_SIZE, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @bulletin_map, align 4
  %25 = call i64 @bnx2x_vf(%struct.bnx2x* %22, i32 %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @state, align 4
  %29 = call i64 @bnx2x_vf(%struct.bnx2x* %26, i32 %27, i32 %28)
  %30 = load i64, i64* @VF_ENABLED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @state, align 4
  %36 = call i64 @bnx2x_vf(%struct.bnx2x* %33, i32 %34, i32 %35)
  %37 = load i64, i64* @VF_ACQUIRED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %69

40:                                               ; preds = %32, %2
  %41 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %42 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @BULLETIN_CONTENT_SIZE, align 4
  %46 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %47 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %49 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %50 = call i32 @bnx2x_crc_vf_bulletin(%struct.bnx2x* %48, %struct.pf_vf_bulletin_content* %49)
  %51 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %52 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @abs_vfid, align 4
  %58 = call i64 @bnx2x_vf(%struct.bnx2x* %55, i32 %56, i32 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @U64_HI(i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @U64_LO(i64 %61)
  %63 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %6, align 8
  %64 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 4
  %67 = call i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x* %53, i32 0, i64 %54, i64 %58, i32 %60, i32 %62, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %40, %39
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

declare dso_local %struct.TYPE_2__* @BP_VF_BULLETIN_DMA(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_vf(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_crc_vf_bulletin(%struct.bnx2x*, %struct.pf_vf_bulletin_content*) #1

declare dso_local i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
