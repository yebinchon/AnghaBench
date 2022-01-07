; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_associate_keyval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_associate_keyval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.csr1212_keyval*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CSR1212_KV_ID_DESCRIPTOR = common dso_local global i32 0, align 4
@CSR1212_KV_ID_DEPENDENT_INFO = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_KEY = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_DATA = common dso_local global i32 0, align 4
@CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csr1212_associate_keyval(%struct.csr1212_keyval* %0, %struct.csr1212_keyval* %1) #0 {
  %3 = alloca %struct.csr1212_keyval*, align 8
  %4 = alloca %struct.csr1212_keyval*, align 8
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %3, align 8
  store %struct.csr1212_keyval* %1, %struct.csr1212_keyval** %4, align 8
  %5 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %6 = icmp ne %struct.csr1212_keyval* %5, null
  br i1 %6, label %7, label %109

7:                                                ; preds = %2
  %8 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %9 = icmp ne %struct.csr1212_keyval* %8, null
  br i1 %9, label %10, label %109

10:                                               ; preds = %7
  %11 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %12 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CSR1212_KV_ID_DESCRIPTOR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %109, label %17

17:                                               ; preds = %10
  %18 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %19 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CSR1212_KV_ID_DESCRIPTOR, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %26 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CSR1212_KV_ID_DEPENDENT_INFO, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %33 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %40 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CSR1212_KV_ID_EXTENDED_DATA, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %47 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 48
  br i1 %50, label %109, label %51

51:                                               ; preds = %45, %38, %31, %24, %17
  %52 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %53 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %60 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %109, label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %67 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %74 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @CSR1212_KV_ID_EXTENDED_DATA, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %109, label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %81 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %88 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY_SPECIFIER_ID, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %109, label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %95 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CSR1212_KV_ID_EXTENDED_DATA, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %102 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CSR1212_KV_ID_EXTENDED_KEY, align 4
  %106 = icmp ne i32 %104, %105
  br label %107

107:                                              ; preds = %100, %93
  %108 = phi i1 [ false, %93 ], [ %106, %100 ]
  br label %109

109:                                              ; preds = %107, %86, %72, %58, %45, %10, %7, %2
  %110 = phi i1 [ true, %86 ], [ true, %72 ], [ true, %58 ], [ true, %45 ], [ true, %10 ], [ true, %7 ], [ true, %2 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @BUG_ON(i32 %111)
  %113 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %114 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %113, i32 0, i32 0
  %115 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %114, align 8
  %116 = icmp ne %struct.csr1212_keyval* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %119 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %118, i32 0, i32 0
  %120 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %119, align 8
  %121 = call i32 @csr1212_release_keyval(%struct.csr1212_keyval* %120)
  br label %122

122:                                              ; preds = %117, %109
  %123 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %124 = call i32 @csr1212_keep_keyval(%struct.csr1212_keyval* %123)
  %125 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %126 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %3, align 8
  %127 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %126, i32 0, i32 0
  store %struct.csr1212_keyval* %125, %struct.csr1212_keyval** %127, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @csr1212_release_keyval(%struct.csr1212_keyval*) #1

declare dso_local i32 @csr1212_keep_keyval(%struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
