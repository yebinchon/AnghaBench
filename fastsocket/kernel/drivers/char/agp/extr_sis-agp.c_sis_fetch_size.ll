; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sis-agp.c_sis_fetch_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_sis-agp.c_sis_fetch_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.aper_size_info_8 = type { i32, i32 }

@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@SIS_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sis_fetch_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_fetch_size() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aper_size_info_8*, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SIS_APSIZE, align 4
  %9 = call i32 @pci_read_config_byte(i32 %7, i32 %8, i32* %2)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.aper_size_info_8* @A_SIZE_8(i32 %14)
  store %struct.aper_size_info_8* %15, %struct.aper_size_info_8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %64, %0
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %4, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %26, i64 %28
  %30 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, -8
  %36 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %4, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %36, i64 %38
  %40 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -8
  %43 = icmp eq i32 %35, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %33, %24
  %45 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %4, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %45, i64 %47
  %49 = bitcast %struct.aper_size_info_8* %48 to i8*
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i8* %49, i8** %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.aper_size_info_8*, %struct.aper_size_info_8** %4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %57, i64 %59
  %61 = getelementptr inbounds %struct.aper_size_info_8, %struct.aper_size_info_8* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %1, align 4
  br label %68

63:                                               ; preds = %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %16

67:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local %struct.aper_size_info_8* @A_SIZE_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
