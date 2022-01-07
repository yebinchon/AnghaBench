; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_ctr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-stripe.c_stripe_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.stripe_c*, i32 }
%struct.stripe_c = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dm_target*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid stripe count\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid chunk_size\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Target length not divisible by number of stripes\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Target length not divisible by chunk size\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Not enough destinations specified\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Memory allocation for striped context failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@trigger_event = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Couldn't parse stripe destination\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @stripe_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.stripe_c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %208

22:                                               ; preds = %3
  %23 = load i8**, i8*** %7, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @kstrtouint(i8* %25, i32 10, i32* %11)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %208

36:                                               ; preds = %28
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @kstrtouint(i8* %39, i32 10, i32* %12)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %208

50:                                               ; preds = %42
  %51 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %52 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @sector_div(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %208

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @sector_div(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8** %71, align 8
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %208

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 2, %77
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8** %82, align 8
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %208

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.stripe_c* @alloc_context(i32 %86)
  store %struct.stripe_c* %87, %struct.stripe_c** %8, align 8
  %88 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %89 = icmp ne %struct.stripe_c* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %208

95:                                               ; preds = %85
  %96 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %97 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %96, i32 0, i32 7
  %98 = load i32, i32* @trigger_event, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %101 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %102 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %101, i32 0, i32 6
  store %struct.dm_target* %100, %struct.dm_target** %102, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %105 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %108 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %95
  %115 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %116 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %115, i32 0, i32 1
  store i32 -1, i32* %116, align 4
  br label %123

117:                                              ; preds = %95
  %118 = load i32, i32* %11, align 4
  %119 = call i8* @__ffs(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %122 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %114
  %124 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %208

131:                                              ; preds = %123
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %134 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %137 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %140 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %131
  %147 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %148 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %147, i32 0, i32 3
  store i32 -1, i32* %148, align 4
  br label %155

149:                                              ; preds = %131
  %150 = load i32, i32* %12, align 4
  %151 = call i8* @__ffs(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %154 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %146
  store i32 0, i32* %14, align 4
  br label %156

156:                                              ; preds = %201, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %204

160:                                              ; preds = %156
  %161 = load i8**, i8*** %7, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 2
  store i8** %162, i8*** %7, align 8
  %163 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %164 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i8**, i8*** %7, align 8
  %167 = call i32 @get_stripe(%struct.dm_target* %163, %struct.stripe_c* %164, i32 %165, i8** %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %160
  %171 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %172 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8** %172, align 8
  br label %173

173:                                              ; preds = %177, %170
  %174 = load i32, i32* %14, align 4
  %175 = add i32 %174, -1
  store i32 %175, i32* %14, align 4
  %176 = icmp ne i32 %174, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %179 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %180 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %179, i32 0, i32 4
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dm_put_device(%struct.dm_target* %178, i32 %186)
  br label %173

188:                                              ; preds = %173
  %189 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %190 = call i32 @kfree(%struct.stripe_c* %189)
  %191 = load i32, i32* %13, align 4
  store i32 %191, i32* %4, align 4
  br label %208

192:                                              ; preds = %160
  %193 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %194 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %193, i32 0, i32 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = call i32 @atomic_set(i32* %199, i32 0)
  br label %201

201:                                              ; preds = %192
  %202 = load i32, i32* %14, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %156

204:                                              ; preds = %156
  %205 = load %struct.stripe_c*, %struct.stripe_c** %8, align 8
  %206 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %207 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %206, i32 0, i32 3
  store %struct.stripe_c* %205, %struct.stripe_c** %207, align 8
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %204, %188, %129, %90, %80, %69, %58, %45, %31, %17
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @sector_div(i32, i32) #1

declare dso_local %struct.stripe_c* @alloc_context(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @__ffs(i32) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @get_stripe(%struct.dm_target*, %struct.stripe_c*, i32, i8**) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @kfree(%struct.stripe_c*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
