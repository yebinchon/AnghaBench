; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_configure_reg0xc05.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_configure_reg0xc05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend_parameters*, i32*)* @configure_reg0xc05 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_reg0xc05(%struct.dvb_frontend_parameters* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend_parameters* %0, %struct.dvb_frontend_parameters** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 128, label %13
    i32 131, label %14
    i32 130, label %18
    i32 129, label %22
  ]

13:                                               ; preds = %2
  br label %26

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 1024
  store i32 %17, i32* %15, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 2048
  store i32 %21, i32* %19, align 4
  br label %26

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %22, %18, %14, %13
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %46 [
    i32 132, label %32
    i32 136, label %33
    i32 135, label %37
    i32 134, label %41
    i32 133, label %45
  ]

32:                                               ; preds = %26
  br label %49

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 128
  store i32 %36, i32* %34, align 4
  br label %49

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 256
  store i32 %40, i32* %38, align 4
  br label %49

41:                                               ; preds = %26
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 384
  store i32 %44, i32* %42, align 4
  br label %49

45:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %49

46:                                               ; preds = %26
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %88

49:                                               ; preds = %45, %41, %37, %33, %32
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %73 [
    i32 142, label %55
    i32 141, label %56
    i32 140, label %60
    i32 139, label %64
    i32 138, label %68
    i32 137, label %72
  ]

55:                                               ; preds = %49
  br label %76

56:                                               ; preds = %49
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, 8
  store i32 %59, i32* %57, align 4
  br label %76

60:                                               ; preds = %49
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 16
  store i32 %63, i32* %61, align 4
  br label %76

64:                                               ; preds = %49
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 24
  store i32 %67, i32* %65, align 4
  br label %76

68:                                               ; preds = %49
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, 32
  store i32 %71, i32* %69, align 4
  br label %76

72:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %76

73:                                               ; preds = %49
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %88

76:                                               ; preds = %72, %68, %64, %60, %56, %55
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 4
  store i32 %82, i32* %80, align 4
  br label %87

83:                                               ; preds = %76
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 2
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %83, %79
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %73, %46, %23
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
