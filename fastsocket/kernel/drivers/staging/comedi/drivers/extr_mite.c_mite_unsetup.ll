; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_unsetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_unsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_struct = type { i64, i64, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_unsetup(%struct.mite_struct* %0) #0 {
  %2 = alloca %struct.mite_struct*, align 8
  store %struct.mite_struct* %0, %struct.mite_struct** %2, align 8
  %3 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %4 = icmp ne %struct.mite_struct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %45

6:                                                ; preds = %1
  %7 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %8 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @iounmap(i32* %14)
  %16 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %16, i32 0, i32 4
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %11, %6
  %19 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %20 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %25 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @iounmap(i32* %26)
  %28 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %29 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %18
  %31 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %37 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @comedi_pci_disable(i32 %38)
  %40 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.mite_struct*, %struct.mite_struct** %2, align 8
  %44 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %5
  ret void
}

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @comedi_pci_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
