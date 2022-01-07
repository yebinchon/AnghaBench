; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_init_reqrsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_init_reqrsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32 }
%struct.bfa_s = type { i32 }
%struct.list_head = type { i32 }

@BFI_SGE_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcxp_s*, %struct.bfa_s*, i32*, i32*, i32***, i32***, %struct.list_head*, i32, i32**, i32**)* @bfa_fcxp_init_reqrsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcxp_init_reqrsp(%struct.bfa_fcxp_s* %0, %struct.bfa_s* %1, i32* %2, i32* %3, i32*** %4, i32*** %5, %struct.list_head* %6, i32 %7, i32** %8, i32** %9) #0 {
  %11 = alloca %struct.bfa_fcxp_s*, align 8
  %12 = alloca %struct.bfa_s*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32***, align 8
  %16 = alloca i32***, align 8
  %17 = alloca %struct.list_head*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32**, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %11, align 8
  store %struct.bfa_s* %1, %struct.bfa_s** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32*** %4, i32**** %15, align 8
  store i32*** %5, i32**** %16, align 8
  store %struct.list_head* %6, %struct.list_head** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i32** %9, i32*** %20, align 8
  %21 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %22 = icmp eq %struct.bfa_s* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.bfa_s*, %struct.bfa_s** %12, align 8
  %26 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %11, align 8
  %27 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_trc(%struct.bfa_s* %25, i32 %28)
  %30 = load i32, i32* %18, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %10
  %33 = load i32*, i32** %13, align 8
  store i32 1, i32* %33, align 4
  br label %58

34:                                               ; preds = %10
  %35 = load i32**, i32*** %19, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON(i32 %38)
  %40 = load i32**, i32*** %20, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load i32*, i32** %13, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32**, i32*** %19, align 8
  %47 = load i32***, i32**** %15, align 8
  store i32** %46, i32*** %47, align 8
  %48 = load i32**, i32*** %20, align 8
  %49 = load i32***, i32**** %16, align 8
  store i32** %48, i32*** %49, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32*, i32** %14, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* @BFI_SGE_INLINE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %34
  %56 = call i32 @WARN_ON(i32 1)
  br label %57

57:                                               ; preds = %55, %34
  br label %58

58:                                               ; preds = %57, %32
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
