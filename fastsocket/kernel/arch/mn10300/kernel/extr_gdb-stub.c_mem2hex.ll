; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_mem2hex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_mem2hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32, i32)* @mem2hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mem2hex(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = ptrtoint i32* %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %24 = call i64 @gdbstub_read_byte(i32* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %133

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = call i8* @pack_hex_byte(i8* %28, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %27, %18, %4
  %37 = load i32*, i32** %10, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %47 = call i64 @gdbstub_read_word(i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* null, i8** %5, align 8
  br label %133

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = call i8* @pack_hex_byte(i8* %51, i32 %53)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @pack_hex_byte(i8* %55, i32 %57)
  store i8* %58, i8** %7, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 2
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %50, %41, %36
  br label %64

64:                                               ; preds = %73, %63
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 4
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %70 = call i64 @gdbstub_read_dword(i32* %68, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i8* null, i8** %5, align 8
  br label %133

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = call i8* @pack_hex_byte(i8* %74, i32 %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @pack_hex_byte(i8* %78, i32 %80)
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @pack_hex_byte(i8* %82, i32 %84)
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @pack_hex_byte(i8* %86, i32 %88)
  store i8* %89, i8** %7, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  store i32* %91, i32** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %92, 4
  store i32 %93, i32* %8, align 4
  br label %64

94:                                               ; preds = %64
  %95 = load i32, i32* %8, align 4
  %96 = icmp sge i32 %95, 2
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %100 = call i64 @gdbstub_read_word(i32* %98, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i8* null, i8** %5, align 8
  br label %133

103:                                              ; preds = %97
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = call i8* @pack_hex_byte(i8* %104, i32 %106)
  store i8* %107, i8** %7, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @pack_hex_byte(i8* %108, i32 %110)
  store i8* %111, i8** %7, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32* %113, i32** %10, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 2
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %103, %94
  %117 = load i32, i32* %8, align 4
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %130

119:                                              ; preds = %116
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %122 = call i64 @gdbstub_read_byte(i32* %120, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i8* null, i8** %5, align 8
  br label %133

125:                                              ; preds = %119
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = call i8* @pack_hex_byte(i8* %126, i32 %128)
  store i8* %129, i8** %7, align 8
  br label %130

130:                                              ; preds = %125, %116
  %131 = load i8*, i8** %7, align 8
  store i8 0, i8* %131, align 1
  %132 = load i8*, i8** %7, align 8
  store i8* %132, i8** %5, align 8
  br label %133

133:                                              ; preds = %130, %124, %102, %72, %49, %26
  %134 = load i8*, i8** %5, align 8
  ret i8* %134
}

declare dso_local i64 @gdbstub_read_byte(i32*, i32*) #1

declare dso_local i8* @pack_hex_byte(i8*, i32) #1

declare dso_local i64 @gdbstub_read_word(i32*, i32*) #1

declare dso_local i64 @gdbstub_read_dword(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
