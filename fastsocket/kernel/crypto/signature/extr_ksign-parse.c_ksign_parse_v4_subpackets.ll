; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_v4_subpackets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_v4_subpackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksign_signature = type { i32, i8**, i8* }

@EBADMSG = common dso_local global i32 0, align 4
@KSIGN_HAVE_TIMESTAMP = common dso_local global i32 0, align 4
@KSIGN_HAVE_KEYID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ksign: signature subpkt too short\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksign_signature*, i32*, i64)* @ksign_parse_v4_subpackets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksign_parse_v4_subpackets(%struct.ksign_signature* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksign_signature*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ksign_signature* %0, %struct.ksign_signature** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %10

10:                                               ; preds = %120, %22, %3
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %121

13:                                               ; preds = %10
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* %14, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %10

23:                                               ; preds = %13
  %24 = load i64, i64* %8, align 8
  %25 = icmp ugt i64 %24, 192
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %27, 255
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %30, 192
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %126

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = sub i64 %34, 192
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = shl i64 %36, 8
  store i64 %37, i64* %8, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  %40 = load i32, i32* %38, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 192
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %7, align 8
  br label %65

48:                                               ; preds = %26, %23
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 255
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %126

55:                                               ; preds = %51
  %56 = call i8* @read_32(i32** %6)
  %57 = ptrtoint i8* %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 4
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %126

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %48
  br label %65

65:                                               ; preds = %64, %33
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %130

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %7, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %6, align 8
  %78 = load i32, i32* %76, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 127
  switch i32 %82, label %116 [
    i32 128, label %83
    i32 129, label %96
  ]

83:                                               ; preds = %72
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %126

87:                                               ; preds = %83
  %88 = call i8* @read_32(i32** %6)
  %89 = load %struct.ksign_signature*, %struct.ksign_signature** %5, align 8
  %90 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @KSIGN_HAVE_TIMESTAMP, align 4
  %92 = load %struct.ksign_signature*, %struct.ksign_signature** %5, align 8
  %93 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %120

96:                                               ; preds = %72
  %97 = load i64, i64* %8, align 8
  %98 = icmp ult i64 %97, 8
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %126

100:                                              ; preds = %96
  %101 = call i8* @read_32(i32** %6)
  %102 = load %struct.ksign_signature*, %struct.ksign_signature** %5, align 8
  %103 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  store i8* %101, i8** %105, align 8
  %106 = call i8* @read_32(i32** %6)
  %107 = load %struct.ksign_signature*, %struct.ksign_signature** %5, align 8
  %108 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %107, i32 0, i32 1
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* %106, i8** %110, align 8
  %111 = load i32, i32* @KSIGN_HAVE_KEYID, align 4
  %112 = load %struct.ksign_signature*, %struct.ksign_signature** %5, align 8
  %113 = getelementptr inbounds %struct.ksign_signature, %struct.ksign_signature* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %120

116:                                              ; preds = %72
  %117 = load i64, i64* %8, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 %117
  store i32* %119, i32** %6, align 8
  br label %120

120:                                              ; preds = %116, %100, %87
  br label %10

121:                                              ; preds = %10
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @BUG_ON(i32 %124)
  store i32 0, i32* %4, align 4
  br label %130

126:                                              ; preds = %99, %86, %62, %54, %32
  %127 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %128 = load i32, i32* @EBADMSG, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %121, %69
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i8* @read_32(i32**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
