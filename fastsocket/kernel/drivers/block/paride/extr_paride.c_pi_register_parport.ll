; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_pi_register_parport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_paride.c_pi_register_parport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32, i32 }
%struct.parport = type { i64 }

@pi_wake_up = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: 0x%x is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @pi_register_parport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pi_register_parport(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.parport*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.parport* @parport_find_base(i32 %9)
  store %struct.parport* %10, %struct.parport** %6, align 8
  %11 = load %struct.parport*, %struct.parport** %6, align 8
  %12 = icmp ne %struct.parport* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load %struct.parport*, %struct.parport** %6, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @pi_wake_up, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = bitcast %struct.TYPE_3__* %20 to i8*
  %22 = call i32 @parport_register_device(%struct.parport* %15, i32 %18, i32* null, i32 %19, i32* null, i32 0, i8* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.parport*, %struct.parport** %6, align 8
  %26 = call i32 @parport_put_port(%struct.parport* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

32:                                               ; preds = %14
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.parport*, %struct.parport** %6, align 8
  %46 = getelementptr inbounds %struct.parport, %struct.parport* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %38, %32
  %50 = load %struct.parport*, %struct.parport** %6, align 8
  %51 = getelementptr inbounds %struct.parport, %struct.parport* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %31, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.parport* @parport_find_base(i32) #1

declare dso_local i32 @parport_register_device(%struct.parport*, i32, i32*, i32, i32*, i32, i8*) #1

declare dso_local i32 @parport_put_port(%struct.parport*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
