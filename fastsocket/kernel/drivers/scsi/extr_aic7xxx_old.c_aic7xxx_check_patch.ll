; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_check_patch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_check_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sequencer_patch = type { i32, i64 (%struct.aic7xxx_host.0*)*, i32, i32 }
%struct.aic7xxx_host.0 = type opaque
%struct.aic7xxx_host = type { i32 }

@sequencer_patches = common dso_local global %struct.sequencer_patch* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, %struct.sequencer_patch**, i32, i32*)* @aic7xxx_check_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_check_patch(%struct.aic7xxx_host* %0, %struct.sequencer_patch** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aic7xxx_host*, align 8
  %7 = alloca %struct.sequencer_patch**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sequencer_patch*, align 8
  %11 = alloca %struct.sequencer_patch*, align 8
  %12 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %6, align 8
  store %struct.sequencer_patch** %1, %struct.sequencer_patch*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.sequencer_patch*, %struct.sequencer_patch** @sequencer_patches, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.sequencer_patch* %13)
  store i32 %14, i32* %12, align 4
  %15 = load %struct.sequencer_patch*, %struct.sequencer_patch** @sequencer_patches, align 8
  %16 = load i32, i32* %12, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %15, i64 %17
  store %struct.sequencer_patch* %18, %struct.sequencer_patch** %11, align 8
  %19 = load %struct.sequencer_patch**, %struct.sequencer_patch*** %7, align 8
  %20 = load %struct.sequencer_patch*, %struct.sequencer_patch** %19, align 8
  store %struct.sequencer_patch* %20, %struct.sequencer_patch** %10, align 8
  br label %21

21:                                               ; preds = %57, %4
  %22 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %23 = load %struct.sequencer_patch*, %struct.sequencer_patch** %11, align 8
  %24 = icmp ult %struct.sequencer_patch* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %28 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br label %31

31:                                               ; preds = %25, %21
  %32 = phi i1 [ false, %21 ], [ %30, %25 ]
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %35 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %34, i32 0, i32 1
  %36 = load i64 (%struct.aic7xxx_host.0*)*, i64 (%struct.aic7xxx_host.0*)** %35, align 8
  %37 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %38 = bitcast %struct.aic7xxx_host* %37 to %struct.aic7xxx_host.0*
  %39 = call i64 %36(%struct.aic7xxx_host.0* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %44 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %49 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %51, i64 %52
  store %struct.sequencer_patch* %53, %struct.sequencer_patch** %10, align 8
  br label %57

54:                                               ; preds = %33
  %55 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %56 = getelementptr inbounds %struct.sequencer_patch, %struct.sequencer_patch* %55, i32 1
  store %struct.sequencer_patch* %56, %struct.sequencer_patch** %10, align 8
  br label %57

57:                                               ; preds = %54, %41
  br label %21

58:                                               ; preds = %31
  %59 = load %struct.sequencer_patch*, %struct.sequencer_patch** %10, align 8
  %60 = load %struct.sequencer_patch**, %struct.sequencer_patch*** %7, align 8
  store %struct.sequencer_patch* %59, %struct.sequencer_patch** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %67

66:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(%struct.sequencer_patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
