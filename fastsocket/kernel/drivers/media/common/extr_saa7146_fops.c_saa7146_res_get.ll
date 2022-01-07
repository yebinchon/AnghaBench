; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_res_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"already allocated! want: 0x%02x, cur:0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"locked! vv->resources:0x%02x, we want:0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"res: get 0x%02x, cur:0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_res_get(%struct.saa7146_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %9 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %8, i32 0, i32 1
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %6, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 0
  %13 = load %struct.saa7146_vv*, %struct.saa7146_vv** %12, align 8
  store %struct.saa7146_vv* %13, %struct.saa7146_vv** %7, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DEB_D(i8* %26)
  store i32 1, i32* %3, align 4
  br label %61

28:                                               ; preds = %2
  %29 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %30 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %37 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @DEB_D(i8* %41)
  store i32 0, i32* %3, align 4
  br label %61

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %46 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %51 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %56 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @DEB_D(i8* %59)
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %43, %35, %20
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @DEB_D(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
