; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_parse_compatible_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_parse_compatible_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i8*, i32 }
%struct.pnp_id = type { i32 }

@LARGE_TAG = common dso_local global i8 0, align 1
@PNP_NAME_LEN = common dso_local global i32 0, align 4
@PNP_EISA_ID_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown tag %#x length %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"no end tag in resource structure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.pnp_dev*)* @pnpbios_parse_compatible_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnpbios_parse_compatible_ids(i8* %0, i8* %1, %struct.pnp_dev* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pnp_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i8], align 1
  %12 = alloca %struct.pnp_id*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pnp_dev* %2, %struct.pnp_dev** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %167

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %162, %16
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %163

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @LARGE_TAG, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %35, %39
  store i32 %40, i32* %8, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %57

45:                                               ; preds = %21
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 7
  store i32 %50, i32* %8, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 3
  %56 = and i32 %55, 15
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %45, %30
  %58 = load i32, i32* %9, align 4
  switch i32 %58, label %134 [
    i32 130, label %59
    i32 129, label %91
    i32 128, label %130
  ]

59:                                               ; preds = %57
  %60 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %61 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @PNP_NAME_LEN, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @PNP_NAME_LEN, align 4
  %70 = sub nsw i32 %69, 2
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  %75 = call i32 @strncpy(i8* %62, i8* %64, i32 %74)
  %76 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %77 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @PNP_NAME_LEN, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @PNP_NAME_LEN, align 4
  %84 = sub nsw i32 %83, 1
  br label %87

85:                                               ; preds = %73
  %86 = load i32, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %78, i64 %89
  store i8 0, i8* %90, align 1
  br label %141

91:                                               ; preds = %57
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 4
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %135

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 8
  %105 = or i32 %99, %104
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 3
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl i32 %109, 16
  %111 = or i32 %105, %110
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 24
  %117 = or i32 %111, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @PNP_EISA_ID_MASK, align 4
  %120 = and i32 %118, %119
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %122 = call i32 @pnp_eisa_id_to_string(i32 %120, i8* %121)
  %123 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %125 = call %struct.pnp_id* @pnp_add_id(%struct.pnp_dev* %123, i8* %124)
  store %struct.pnp_id* %125, %struct.pnp_id** %12, align 8
  %126 = load %struct.pnp_id*, %struct.pnp_id** %12, align 8
  %127 = icmp ne %struct.pnp_id* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %95
  store i8* null, i8** %4, align 8
  br label %167

129:                                              ; preds = %95
  br label %141

130:                                              ; preds = %57
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  store i8* %132, i8** %5, align 8
  %133 = load i8*, i8** %5, align 8
  store i8* %133, i8** %4, align 8
  br label %167

134:                                              ; preds = %57
  br label %135

135:                                              ; preds = %134, %94
  %136 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %137 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %129, %87
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8, i8* @LARGE_TAG, align 1
  %147 = zext i8 %146 to i32
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 3
  %153 = load i8*, i8** %5, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %5, align 8
  br label %162

156:                                              ; preds = %141
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  %159 = load i8*, i8** %5, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %5, align 8
  br label %162

162:                                              ; preds = %156, %150
  br label %17

163:                                              ; preds = %17
  %164 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  %165 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %164, i32 0, i32 1
  %166 = call i32 (i32*, i8*, ...) @dev_err(i32* %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %167

167:                                              ; preds = %163, %130, %128, %15
  %168 = load i8*, i8** %4, align 8
  ret i8* %168
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @pnp_eisa_id_to_string(i32, i8*) #1

declare dso_local %struct.pnp_id* @pnp_add_id(%struct.pnp_dev*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
