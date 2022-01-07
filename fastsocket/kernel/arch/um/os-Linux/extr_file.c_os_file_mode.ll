; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_file.c_os_file_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_file.c_os_file_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openflags = type { i32 }

@W_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @os_file_mode(i8* %0, %struct.openflags* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.openflags*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.openflags, align 4
  %8 = alloca %struct.openflags, align 4
  %9 = alloca %struct.openflags, align 4
  store i8* %0, i8** %4, align 8
  store %struct.openflags* %1, %struct.openflags** %5, align 8
  %10 = load %struct.openflags*, %struct.openflags** %5, align 8
  %11 = call i32 (...) @OPENFLAGS()
  %12 = getelementptr inbounds %struct.openflags, %struct.openflags* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = bitcast %struct.openflags* %10 to i8*
  %14 = bitcast %struct.openflags* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @W_OK, align 4
  %17 = call i32 @access(i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @EACCES, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @errno, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load %struct.openflags*, %struct.openflags** %5, align 8
  %32 = load %struct.openflags*, %struct.openflags** %5, align 8
  %33 = getelementptr inbounds %struct.openflags, %struct.openflags* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @of_write(i32 %34)
  %36 = getelementptr inbounds %struct.openflags, %struct.openflags* %8, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.openflags* %31 to i8*
  %38 = bitcast %struct.openflags* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %39

39:                                               ; preds = %30, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @R_OK, align 4
  %43 = call i32 @access(i8* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* @errno, align 4
  %48 = load i32, i32* @EACCES, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %46, %40
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = load %struct.openflags*, %struct.openflags** %5, align 8
  %58 = load %struct.openflags*, %struct.openflags** %5, align 8
  %59 = getelementptr inbounds %struct.openflags, %struct.openflags* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @of_read(i32 %60)
  %62 = getelementptr inbounds %struct.openflags, %struct.openflags* %9, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = bitcast %struct.openflags* %57 to i8*
  %64 = bitcast %struct.openflags* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  br label %65

65:                                               ; preds = %56, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %50, %24
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @OPENFLAGS(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @of_write(i32) #1

declare dso_local i32 @of_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
