; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_init_input_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_wacom_wac.c_wacom_init_input_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.wacom_wac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BTN_TOOL_PEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_init_input_dev(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %4, align 8
  %5 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %6 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %94 [
    i32 128, label %10
    i32 129, label %14
    i32 149, label %18
    i32 131, label %22
    i32 132, label %26
    i32 133, label %30
    i32 130, label %34
    i32 147, label %38
    i32 146, label %38
    i32 145, label %42
    i32 148, label %46
    i32 141, label %50
    i32 140, label %50
    i32 144, label %50
    i32 143, label %50
    i32 139, label %54
    i32 142, label %54
    i32 134, label %61
    i32 135, label %65
    i32 137, label %78
    i32 136, label %78
    i32 150, label %78
    i32 138, label %82
    i32 151, label %86
    i32 152, label %90
  ]

10:                                               ; preds = %2
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %13 = call i32 @input_dev_mo(%struct.input_dev* %11, %struct.wacom_wac* %12)
  br label %14

14:                                               ; preds = %2, %10
  %15 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %17 = call i32 @input_dev_g4(%struct.input_dev* %15, %struct.wacom_wac* %16)
  br label %18

18:                                               ; preds = %2, %14
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %21 = call i32 @input_dev_g(%struct.input_dev* %19, %struct.wacom_wac* %20)
  br label %94

22:                                               ; preds = %2
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %25 = call i32 @input_dev_24hd(%struct.input_dev* %23, %struct.wacom_wac* %24)
  br label %94

26:                                               ; preds = %2
  %27 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %28 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %29 = call i32 @input_dev_c22hd(%struct.input_dev* %27, %struct.wacom_wac* %28)
  br label %30

30:                                               ; preds = %2, %26
  %31 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %33 = call i32 @input_dev_c21ux2(%struct.input_dev* %31, %struct.wacom_wac* %32)
  br label %34

34:                                               ; preds = %2, %30
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %37 = call i32 @input_dev_bee(%struct.input_dev* %35, %struct.wacom_wac* %36)
  br label %38

38:                                               ; preds = %2, %2, %34
  %39 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %40 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %41 = call i32 @input_dev_i3(%struct.input_dev* %39, %struct.wacom_wac* %40)
  br label %42

42:                                               ; preds = %2, %38
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %45 = call i32 @input_dev_i3s(%struct.input_dev* %43, %struct.wacom_wac* %44)
  br label %46

46:                                               ; preds = %2, %42
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %49 = call i32 @input_dev_i(%struct.input_dev* %47, %struct.wacom_wac* %48)
  br label %94

50:                                               ; preds = %2, %2, %2, %2
  %51 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %52 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %53 = call i32 @input_dev_i4(%struct.input_dev* %51, %struct.wacom_wac* %52)
  br label %54

54:                                               ; preds = %2, %2, %50
  %55 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %57 = call i32 @input_dev_i4s(%struct.input_dev* %55, %struct.wacom_wac* %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %59 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %60 = call i32 @input_dev_i(%struct.input_dev* %58, %struct.wacom_wac* %59)
  br label %94

61:                                               ; preds = %2
  %62 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %63 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %64 = call i32 @input_dev_tpc2fg(%struct.input_dev* %62, %struct.wacom_wac* %63)
  br label %65

65:                                               ; preds = %2, %61
  %66 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %68 = call i32 @input_dev_tpc(%struct.input_dev* %66, %struct.wacom_wac* %67)
  %69 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %70 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BTN_TOOL_PEN, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %94

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %2, %2, %2, %77
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %81 = call i32 @input_dev_pl(%struct.input_dev* %79, %struct.wacom_wac* %80)
  br label %82

82:                                               ; preds = %2, %78
  %83 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %84 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %85 = call i32 @input_dev_pt(%struct.input_dev* %83, %struct.wacom_wac* %84)
  br label %94

86:                                               ; preds = %2
  %87 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %88 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %89 = call i32 @input_dev_cintiq(%struct.input_dev* %87, %struct.wacom_wac* %88)
  br label %94

90:                                               ; preds = %2
  %91 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %92 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %93 = call i32 @input_dev_bamboo_pt(%struct.input_dev* %91, %struct.wacom_wac* %92)
  br label %94

94:                                               ; preds = %2, %90, %86, %82, %76, %54, %46, %22, %18
  ret void
}

declare dso_local i32 @input_dev_mo(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_g4(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_g(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_24hd(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_c22hd(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_c21ux2(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_bee(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_i3(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_i3s(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_i(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_i4(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_i4s(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_tpc2fg(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_tpc(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_pl(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_pt(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_cintiq(%struct.input_dev*, %struct.wacom_wac*) #1

declare dso_local i32 @input_dev_bamboo_pt(%struct.input_dev*, %struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
