; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_transport_class.c_anon_transport_class_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_transport_class.c_anon_transport_class_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon_transport_class = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.TYPE_5__ = type { i32* }

@anon_transport_dummy_function = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anon_transport_class_register(%struct.anon_transport_class* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.anon_transport_class*, align 8
  %4 = alloca i32, align 4
  store %struct.anon_transport_class* %0, %struct.anon_transport_class** %3, align 8
  %5 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %6 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %9 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32* %7, i32** %10, align 8
  %11 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %12 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %11, i32 0, i32 1
  %13 = call i32 @attribute_container_set_no_classdevs(%struct.TYPE_5__* %12)
  %14 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %15 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %14, i32 0, i32 1
  %16 = call i32 @attribute_container_register(%struct.TYPE_5__* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load i8*, i8** @anon_transport_dummy_function, align 8
  %23 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %24 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load i8*, i8** @anon_transport_dummy_function, align 8
  %27 = load %struct.anon_transport_class*, %struct.anon_transport_class** %3, align 8
  %28 = getelementptr inbounds %struct.anon_transport_class, %struct.anon_transport_class* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @attribute_container_set_no_classdevs(%struct.TYPE_5__*) #1

declare dso_local i32 @attribute_container_register(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
