; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zr36016.c_zr36016_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zr36016 = type { i64, i32, i32, i32, i32, i64, i64 }

@ZR016_GOSTOP = common dso_local global i32 0, align 4
@ZR016_MODE = common dso_local global i32 0, align 4
@ZR016_YUV422 = common dso_local global i32 0, align 4
@ZR016_YUV422_YUV422 = common dso_local global i32 0, align 4
@CODEC_DO_COMPRESSION = common dso_local global i64 0, align 8
@ZR016_COMPRESSION = common dso_local global i32 0, align 4
@ZR016_EXPANSION = common dso_local global i32 0, align 4
@ZR016I_SETUP1 = common dso_local global i32 0, align 4
@ZR016_HRFL = common dso_local global i32 0, align 4
@ZR016_HORZ = common dso_local global i32 0, align 4
@ZR016_VERT = common dso_local global i32 0, align 4
@ZR016_CNTI = common dso_local global i32 0, align 4
@ZR016I_SETUP2 = common dso_local global i32 0, align 4
@ZR016_CCIR = common dso_local global i32 0, align 4
@ZR016I_PAX_HI = common dso_local global i32 0, align 4
@ZR016I_PAX_LO = common dso_local global i32 0, align 4
@ZR016I_PAY_HI = common dso_local global i32 0, align 4
@ZR016I_PAY_LO = common dso_local global i32 0, align 4
@ZR016I_NAX_HI = common dso_local global i32 0, align 4
@ZR016I_NAX_LO = common dso_local global i32 0, align 4
@ZR016I_NAY_HI = common dso_local global i32 0, align 4
@ZR016I_NAY_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zr36016*)* @zr36016_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zr36016_init(%struct.zr36016* %0) #0 {
  %2 = alloca %struct.zr36016*, align 8
  store %struct.zr36016* %0, %struct.zr36016** %2, align 8
  %3 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %4 = load i32, i32* @ZR016_GOSTOP, align 4
  %5 = call i32 @zr36016_write(%struct.zr36016* %3, i32 %4, i32 0)
  %6 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %7 = load i32, i32* @ZR016_MODE, align 4
  %8 = load i32, i32* @ZR016_YUV422, align 4
  %9 = load i32, i32* @ZR016_YUV422_YUV422, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %12 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CODEC_DO_COMPRESSION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ZR016_COMPRESSION, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ZR016_EXPANSION, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = or i32 %10, %21
  %23 = call i32 @zr36016_write(%struct.zr36016* %6, i32 %7, i32 %22)
  %24 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %25 = load i32, i32* @ZR016I_SETUP1, align 4
  %26 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %27 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* @ZR016_HRFL, align 4
  %32 = load i32, i32* @ZR016_HORZ, align 4
  %33 = or i32 %31, %32
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 0, %34 ]
  %37 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %38 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ZR016_VERT, align 4
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = or i32 %36, %45
  %47 = load i32, i32* @ZR016_CNTI, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @zr36016_writei(%struct.zr36016* %24, i32 %25, i32 %48)
  %50 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %51 = load i32, i32* @ZR016I_SETUP2, align 4
  %52 = load i32, i32* @ZR016_CCIR, align 4
  %53 = call i32 @zr36016_writei(%struct.zr36016* %50, i32 %51, i32 %52)
  %54 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %55 = load i32, i32* @ZR016I_PAX_HI, align 4
  %56 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %57 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 8
  %60 = call i32 @zr36016_writei(%struct.zr36016* %54, i32 %55, i32 %59)
  %61 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %62 = load i32, i32* @ZR016I_PAX_LO, align 4
  %63 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %64 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 255
  %67 = call i32 @zr36016_writei(%struct.zr36016* %61, i32 %62, i32 %66)
  %68 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %69 = load i32, i32* @ZR016I_PAY_HI, align 4
  %70 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %71 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = call i32 @zr36016_writei(%struct.zr36016* %68, i32 %69, i32 %73)
  %75 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %76 = load i32, i32* @ZR016I_PAY_LO, align 4
  %77 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %78 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  %81 = call i32 @zr36016_writei(%struct.zr36016* %75, i32 %76, i32 %80)
  %82 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %83 = load i32, i32* @ZR016I_NAX_HI, align 4
  %84 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %85 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 8
  %88 = call i32 @zr36016_writei(%struct.zr36016* %82, i32 %83, i32 %87)
  %89 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %90 = load i32, i32* @ZR016I_NAX_LO, align 4
  %91 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %92 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 255
  %95 = call i32 @zr36016_writei(%struct.zr36016* %89, i32 %90, i32 %94)
  %96 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %97 = load i32, i32* @ZR016I_NAY_HI, align 4
  %98 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %99 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 8
  %102 = call i32 @zr36016_writei(%struct.zr36016* %96, i32 %97, i32 %101)
  %103 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %104 = load i32, i32* @ZR016I_NAY_LO, align 4
  %105 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %106 = getelementptr inbounds %struct.zr36016, %struct.zr36016* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 255
  %109 = call i32 @zr36016_writei(%struct.zr36016* %103, i32 %104, i32 %108)
  %110 = load %struct.zr36016*, %struct.zr36016** %2, align 8
  %111 = load i32, i32* @ZR016_GOSTOP, align 4
  %112 = call i32 @zr36016_write(%struct.zr36016* %110, i32 %111, i32 1)
  ret void
}

declare dso_local i32 @zr36016_write(%struct.zr36016*, i32, i32) #1

declare dso_local i32 @zr36016_writei(%struct.zr36016*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
