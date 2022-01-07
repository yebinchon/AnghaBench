; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_to_utf8.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_keyboard.c_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_utf8(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @put_queue(%struct.vc_data* %8, i32 %9)
  br label %85

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2048
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 6
  %18 = or i32 192, %17
  %19 = call i32 @put_queue(%struct.vc_data* %15, i32 %18)
  %20 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 63
  %23 = or i32 128, %22
  %24 = call i32 @put_queue(%struct.vc_data* %20, i32 %23)
  br label %84

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 65536
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp sge i32 %29, 55296
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 57344
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %85

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %85

39:                                               ; preds = %35
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 12
  %43 = or i32 224, %42
  %44 = call i32 @put_queue(%struct.vc_data* %40, i32 %43)
  %45 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 6
  %48 = and i32 %47, 63
  %49 = or i32 128, %48
  %50 = call i32 @put_queue(%struct.vc_data* %45, i32 %49)
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 63
  %54 = or i32 128, %53
  %55 = call i32 @put_queue(%struct.vc_data* %51, i32 %54)
  br label %83

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 1114112
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = ashr i32 %61, 18
  %63 = or i32 240, %62
  %64 = call i32 @put_queue(%struct.vc_data* %60, i32 %63)
  %65 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = ashr i32 %66, 12
  %68 = and i32 %67, 63
  %69 = or i32 128, %68
  %70 = call i32 @put_queue(%struct.vc_data* %65, i32 %69)
  %71 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %72 = load i32, i32* %4, align 4
  %73 = ashr i32 %72, 6
  %74 = and i32 %73, 63
  %75 = or i32 128, %74
  %76 = call i32 @put_queue(%struct.vc_data* %71, i32 %75)
  %77 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 63
  %80 = or i32 128, %79
  %81 = call i32 @put_queue(%struct.vc_data* %77, i32 %80)
  br label %82

82:                                               ; preds = %59, %56
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83, %14
  br label %85

85:                                               ; preds = %34, %38, %84, %7
  ret void
}

declare dso_local i32 @put_queue(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
