; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_pm3386.c_pm3386_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm3386_init_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = ashr i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pm3386_port_reg_read(i32 %7, i32 778, i32 256)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @pm3386_port_reg_read(i32 %11, i32 777, i32 256)
  %13 = and i32 %12, 65280
  %14 = icmp eq i32 %13, 20480
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @pm3386_port_reg_read(i32 %16, i32 776, i32 256)
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pm3386_port_reg_read(i32 %19, i32 777, i32 256)
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @pm3386_port_reg_read(i32 %22, i32 778, i32 256)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @swaph(i32 %27)
  %29 = call i32 @pm3386_port_reg_write(i32 %25, i32 776, i32 256, i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @swaph(i32 %32)
  %34 = call i32 @pm3386_port_reg_write(i32 %30, i32 777, i32 256, i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @swaph(i32 %37)
  %39 = call i32 @pm3386_port_reg_write(i32 %35, i32 778, i32 256, i32 %38)
  br label %40

40:                                               ; preds = %15, %10, %1
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @pm3386_port_reg_write(i32 %41, i32 1800, i32 16, i32 53333)
  %43 = call i32 @udelay(i32 500)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @pm3386_port_reg_write(i32 %44, i32 1800, i32 16, i32 20565)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @pm3386_port_reg_write(i32 %46, i32 290, i32 32, i32 2)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @pm3386_reg_write(i32 %48, i32 259, i32 3)
  br label %50

50:                                               ; preds = %56, %40
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @pm3386_reg_read(i32 %51, i32 259)
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %50

57:                                               ; preds = %50
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @pm3386_port_reg_write(i32 %58, i32 545, i32 32, i32 7)
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = and i32 %61, 1
  %63 = shl i32 4, %62
  %64 = xor i32 %63, -1
  %65 = and i32 13, %64
  %66 = call i32 @pm3386_reg_write(i32 %60, i32 515, i32 %65)
  br label %67

67:                                               ; preds = %72, %57
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @pm3386_reg_read(i32 %68, i32 515)
  %70 = and i32 %69, 12
  %71 = icmp ne i32 %70, 12
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %67

73:                                               ; preds = %67
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @pm3386_port_reg_write(i32 %74, i32 770, i32 256, i32 275)
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @pm3386_port_reg_write(i32 %76, i32 769, i32 256, i32 32768)
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @pm3386_port_reg_write(i32 %78, i32 769, i32 256, i32 0)
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @pm3386_port_reg_write(i32 %80, i32 774, i32 256, i32 256)
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @pm3386_port_reg_write(i32 %82, i32 784, i32 256, i32 9018)
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @pm3386_port_reg_write(i32 %84, i32 822, i32 256, i32 9018)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @pm3386_port_reg_write(i32 %86, i32 796, i32 256, i32 32)
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @pm3386_port_reg_write(i32 %88, i32 792, i32 256, i32 3)
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @pm3386_port_reg_write(i32 %90, i32 792, i32 256, i32 2)
  ret void
}

declare dso_local i32 @pm3386_port_reg_read(i32, i32, i32) #1

declare dso_local i32 @pm3386_port_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @swaph(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm3386_reg_write(i32, i32, i32) #1

declare dso_local i32 @pm3386_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
