; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr1212.c_csr1212_parse_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csr1212_keyval = type { %struct.csr1212_keyval*, %struct.csr1212_keyval*, i64, i32 }

@CSR1212_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CSR1212_KV_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csr1212_keyval*, i64, i64)* @csr1212_parse_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csr1212_parse_dir_entry(%struct.csr1212_keyval* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.csr1212_keyval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csr1212_keyval*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.csr1212_keyval* %0, %struct.csr1212_keyval** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @CSR1212_SUCCESS, align 4
  store i32 %11, i32* %7, align 4
  store %struct.csr1212_keyval* null, %struct.csr1212_keyval** %8, align 8
  store i32 1, i32* %10, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @CSR1212_KV_KEY_TYPE(i64 %12)
  switch i32 %13, label %38 [
    i32 128, label %14
    i32 129, label %26
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @CSR1212_KV_KEY_ID(i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @CSR1212_KV_VAL(i64 %17)
  %19 = call %struct.csr1212_keyval* @csr1212_new_immediate(i32 %16, i32 %18)
  store %struct.csr1212_keyval* %19, %struct.csr1212_keyval** %8, align 8
  %20 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %21 = icmp ne %struct.csr1212_keyval* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %103

25:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %98

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @CSR1212_KV_KEY_ID(i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @CSR1212_KV_VAL(i64 %29)
  %31 = call %struct.csr1212_keyval* @csr1212_new_csr_offset(i32 %28, i32 %30)
  store %struct.csr1212_keyval* %31, %struct.csr1212_keyval** %8, align 8
  %32 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %33 = icmp ne %struct.csr1212_keyval* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %103

37:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %98

38:                                               ; preds = %3
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @CSR1212_KV_VAL(i64 %39)
  %41 = call i64 @quads_to_bytes(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %103

50:                                               ; preds = %38
  %51 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.csr1212_keyval* @csr1212_find_keyval_offset(%struct.csr1212_keyval* %51, i64 %52)
  store %struct.csr1212_keyval* %53, %struct.csr1212_keyval** %8, align 8
  %54 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %55 = icmp ne %struct.csr1212_keyval* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %98

57:                                               ; preds = %50
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @CSR1212_KV_KEY_TYPE(i64 %58)
  %60 = load i32, i32* @CSR1212_KV_TYPE_DIRECTORY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @CSR1212_KV_KEY_ID(i64 %63)
  %65 = call %struct.csr1212_keyval* @csr1212_new_directory(i32 %64)
  store %struct.csr1212_keyval* %65, %struct.csr1212_keyval** %8, align 8
  br label %70

66:                                               ; preds = %57
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @CSR1212_KV_KEY_ID(i64 %67)
  %69 = call %struct.csr1212_keyval* @csr1212_new_leaf(i32 %68, i32* null, i32 0)
  store %struct.csr1212_keyval* %69, %struct.csr1212_keyval** %8, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %72 = icmp ne %struct.csr1212_keyval* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %103

76:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %77 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %78 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %77, i32 0, i32 3
  store i32 0, i32* %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %81 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %83 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %84 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %83, i32 0, i32 1
  store %struct.csr1212_keyval* %82, %struct.csr1212_keyval** %84, align 8
  %85 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %86 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %85, i32 0, i32 0
  %87 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %86, align 8
  %88 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %89 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %88, i32 0, i32 0
  store %struct.csr1212_keyval* %87, %struct.csr1212_keyval** %89, align 8
  %90 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %91 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %92 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %91, i32 0, i32 0
  %93 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %92, align 8
  %94 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %93, i32 0, i32 1
  store %struct.csr1212_keyval* %90, %struct.csr1212_keyval** %94, align 8
  %95 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %96 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %97 = getelementptr inbounds %struct.csr1212_keyval, %struct.csr1212_keyval* %96, i32 0, i32 0
  store %struct.csr1212_keyval* %95, %struct.csr1212_keyval** %97, align 8
  br label %98

98:                                               ; preds = %76, %56, %37, %25
  %99 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %4, align 8
  %100 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @__csr1212_attach_keyval_to_directory(%struct.csr1212_keyval* %99, %struct.csr1212_keyval* %100, i32 %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %73, %47, %34, %22
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @CSR1212_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %109 = icmp ne %struct.csr1212_keyval* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.csr1212_keyval*, %struct.csr1212_keyval** %8, align 8
  %112 = call i32 @free_keyval(%struct.csr1212_keyval* %111)
  br label %113

113:                                              ; preds = %110, %107, %103
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @CSR1212_KV_KEY_TYPE(i64) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_immediate(i32, i32) #1

declare dso_local i32 @CSR1212_KV_KEY_ID(i64) #1

declare dso_local i32 @CSR1212_KV_VAL(i64) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_csr_offset(i32, i32) #1

declare dso_local i64 @quads_to_bytes(i32) #1

declare dso_local %struct.csr1212_keyval* @csr1212_find_keyval_offset(%struct.csr1212_keyval*, i64) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_directory(i32) #1

declare dso_local %struct.csr1212_keyval* @csr1212_new_leaf(i32, i32*, i32) #1

declare dso_local i32 @__csr1212_attach_keyval_to_directory(%struct.csr1212_keyval*, %struct.csr1212_keyval*, i32) #1

declare dso_local i32 @free_keyval(%struct.csr1212_keyval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
